import libsedml
import libsbml
import os
from biosimulators_utils.model_lang.sbml.utils import get_parameters_variables_outputs_for_simulation
from biosimulators_utils.sedml.data_model import UniformTimeCourseSimulation

qual_models = {"BIOMD0000000562_url.xml", "BIOMD0000000592_url.xml", "BIOMD0000000593_url.xml"}

def create_generic_sedml(sedml_filenames, sbml_filenames):
    for sbml_filename in sbml_filenames:
        sedml_filename = sbml_filename.replace(".xml", ".sedml")
        sedml_filenames.append(sedml_filename)
        doc = libsedml.SedDocument(1,4)
        #Create the model
        rel_filename = os.path.basename(sbml_filename)
        model = doc.createModel()
        model.setLanguage("urn:sedml:language:sbml")
        model.setSource(rel_filename)
        mid = rel_filename.replace(".xml", "")
        mid = mid.replace(" ", "_")
        mid = mid.replace("-", "_")
        mid = mid.replace("+", "_")
        mid1 = mid[0]
        if mid1.isdigit():
            mid = "_" + mid
        ret = model.setId(mid)
        assert(ret == libsedml.LIBSEDML_OPERATION_SUCCESS)

        #Create a generic 10-second simulation
        sim = doc.createUniformTimeCourse()
        simid = "auto_ten_seconds"
        sim.setId(simid)
        sim.setInitialTime(0)
        sim.setOutputStartTime(0)
        sim.setOutputEndTime(10)
        sim.setNumberOfPoints(1000)
        alg = sim.createAlgorithm()
        alg.setKisaoID(694) #'ODE solver'
        alg.setName("ODE solver")
        if os.path.basename(sbml_filename) in qual_models:
            alg.setKisaoID(449)
        
        if os.path.basename(sedml_filename) == "BIOMD0000000356_url.sedml":
            algparm = alg.createAlgorithmParameter()
            algparm.setKisaoID(211)
            algparm.setValue("1e-10")
        
        #Create a task that merges the two.
        task = doc.createTask()
        task.setId("task1")
        task.setModelReference(mid)
        task.setSimulationReference(simid)

        libsedml.writeSedMLToFile(doc, sedml_filename)

def getAllIdsAndNamespacesFromSBML(sbml_filename, seddoc):
    ret = []
    doc = libsbml.readSBMLFromFile(sbml_filename)
    model = doc.getModel()
    for s in range(model.getNumSpecies()):
        ret.append((model.getSpecies(s).getId(), "species"))
    for p in range(model.getNumParameters()):
        ret.append((model.getParameter(p).getId(), "parameter"))
    for c in range(model.getNumCompartments()):
        ret.append((model.getCompartment(c).getId(), "compartment"))
    for r in range(model.getNumReactions()):
        ret.append((model.getReaction(r).getId(), "reaction"))
    for r in range(model.getNumReactions()):
        rxn = model.getReaction(r)
        for l in range(rxn.getNumReactants()):
            left = rxn.getReactant(l)
            if left.isSetConstant() and left.getConstant()==False and left.getId() != "":
                ret.append((left.getId(), "reactant", rxn.getId()))
        for r in range(rxn.getNumProducts()):
            right = rxn.getProduct(r)
            if right.isSetConstant() and right.getConstant()==False and right.getId() != "":
                ret.append((right.getId(), "product", rxn.getId()))
    sedns = seddoc.getSedNamespaces()
    sbml_ns = doc.getURI()
    sedns.addNamespace(sbml_ns, "sbml")
    if os.path.basename(sbml_filename) in qual_models:
        sed_ns = seddoc.getNamespaces()
        sed_ns.add("http://www.sbml.org/sbml/level3/version1/qual/version1", "qual")
        qualModel = model.getPlugin("qual")
        for qs in range(qualModel.getNumQualitativeSpecies()):
            ret.append((qualModel.getQualitativeSpecies(qs).getId(), "qual_species"))
    return ret

def matchSBMLIds(doc, sbml_filenames):
    model_ids = []
    for m in range(doc.getNumModels()):
        model = doc.getModel(m)
        source = model.getSource()
        target = ""
        for sbml_filename in sbml_filenames:
            if source in sbml_filename:
                target = sbml_filename
        if target=="":
            mod2 = doc.getModel(source)
            if mod2:
                source = mod2.getSource()
                for sbml_filename in sbml_filenames:
                    if source in sbml_filename:
                        target = sbml_filename
        if target=="":
            continue
        sbmlids = getAllIdsAndNamespacesFromSBML(target, doc)
        model_ids.append((model.getId(), sbmlids))
    return model_ids

def getModelFromTask(task, doc):
    try:
        return task.getModelReference()
    except:
        subTask = task.getSubTask(0)
        return getModelFromTask(doc.getTask(subTask.getTask()), doc)

def matchTasks(doc, model_ids):
    task_ids = {}
    for (model, sbmlids) in model_ids:
        for t in range(doc.getNumTasks()):
            task = doc.getTask(t)
            if getModelFromTask(task, doc) == model:
                task_ids[task.getId()] = sbmlids
    required_task_ids = set()
    for dg in range(doc.getNumDataGenerators()):
        datagen = doc.getDataGenerator(dg)
        for v in range(datagen.getNumVariables()):
            var = datagen.getVariable(v)
            if var.isSetTaskReference():
                required_task_ids.add(var.getTaskReference())
    
    unneeded_task_ids = set()
    for t in range(doc.getNumTasks()):
        task = doc.getTask(t)
        if type(task) == libsedml.SedRepeatedTask:
            for st in range(task.getNumSubTasks()):
                st_id = task.getSubTask(st).getTask()
                if st_id not in required_task_ids:
                    unneeded_task_ids.add(st_id)

    for taskid in unneeded_task_ids:
        task_ids.pop(taskid)
    return task_ids

def hasTimeCourse(doc, taskid):
    task = doc.getTask(taskid)
    if task.getTypeCode() == libsedml.SEDML_TASK_REPEATEDTASK:
        for st in range(task.getNumSubTasks()):
            subtask = task.getSubTask(st)
            if hasTimeCourse(doc, subtask.getTask()):
                return True
    elif task.getTypeCode() == libsedml.SEDML_TASK:
        sim = doc.getSimulation(task.getSimulationReference())
        if sim.getTypeCode() == libsedml.SEDML_SIMULATION_STEADYSTATE:
            return False
        else:
            #The 'Analysis' type might not have 'time', but enh.
            return True
    return False

def matchTaskTimes(doc, task_ids):
    task_times = {}
    for taskref in task_ids:
        for dg in range(doc.getNumDataGenerators()):
            datagen = doc.getDataGenerator(dg)
            if not datagen.getNumVariables() == 1:
                continue
            astn = datagen.getMath()
            if astn and astn.getNumChildren()>0:
                continue
            var = datagen.getVariable(0)
            if var.getTaskReference() == taskref:
                if var.getSymbol() == "urn:sedml:symbol:time":
                    task_times[taskref] = datagen.getId()
        if taskref not in task_times and hasTimeCourse(doc, taskref):
            #Create new datagen for time
            datagen = doc.createDataGenerator()
            datagen.setId("auto_time_for_" + taskref)
            datagen.setName("Time")
            var = datagen.createVariable()
            var.setId("auto_time_for_" + taskref + "_var")
            var.setSymbol("urn:sedml:symbol:time")
            var.setTaskReference(taskref)
            datagen.setMath(libsedml.parseL3Formula("auto_time_for_" + taskref + "_var"))
            task_times[taskref] = datagen.getId()
    return task_times


def getTargetFor(sbmlid):
    if sbmlid[1] == "species":
        return "/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id=&apos;" + sbmlid[0] + "&apos;]"
    if sbmlid[1] == "parameter":
        return "/sbml:sbml/sbml:model/sbml:listOfParameters/sbml:parameter[@id=&apos;" + sbmlid[0] + "&apos;]"
    if sbmlid[1] == "compartment":
        return "/sbml:sbml/sbml:model/sbml:listOfCompartments/sbml:compartment[@id=&apos;" + sbmlid[0] + "&apos;]"
    if sbmlid[1] == "reaction":
        return "/sbml:sbml/sbml:model/sbml:listOfReactions/sbml:reaction[@id=&apos;" + sbmlid[0] + "&apos;]"
    if sbmlid[1] == "reactant":
        raise NotImplementedError("Don't want to implement speciesReference targets if I don't need to")
    if sbmlid[1] == "product":
        raise NotImplementedError("Don't want to implement speciesReference targets if I don't need to")
    if sbmlid[1] == "qual_species":
        return "/sbml:sbml/sbml:model/qual:listOfQualitativeSpecies/qual:qualitativeSpecies[@qual:id=&apos;" + sbmlid[0] + "&apos;]"
    

def defineDatagenForAllTargets(doc, task_ids):
    datagen_ids = {}
    for taskref in task_ids:
        datagen_ids[taskref] = []
    for dg in range(doc.getNumDataGenerators()):
        datagen = doc.getDataGenerator(dg)
        if not datagen.getNumVariables() == 1:
            continue
        astn = datagen.getMath()
        if astn and astn.getNumChildren()>0:
            continue
        var = datagen.getVariable(0)
        taskref = var.getTaskReference()
        if taskref not in task_ids:
            continue
        sbmlids = task_ids[taskref]
        target = var.getTarget()
        removeList = []
        for sbmlid in sbmlids:
            if "@id='" + sbmlid[0] + "'" in target:
                if sbmlid[1] == "reaction" and ("listOfReactants" in target or "listOfProducts" in target):
                    #It's a link for a speciesReference, not a reaction
                    continue
                datagen_ids[taskref].append((datagen.getId(), sbmlid))
                removeList.append(sbmlid)
        for sbmlid in removeList:
            sbmlids.remove(sbmlid)
            if len(sbmlids) == 0:
                del task_ids[taskref]
    #Anything left in sbmlids needs to be added
    for taskref in task_ids:
        sbmlids = task_ids[taskref]
        for sbmlid in sbmlids:
            datagen = doc.createDataGenerator()
            dgid = "auto_dg_for_" + taskref + "_" + sbmlid[0]
            datagen.setId(dgid)
            datagen.setMath(libsedml.parseL3Formula(dgid + "__x"))
            var = datagen.createVariable()
            var.setId(dgid + "__x")
            var.setTarget(getTargetFor(sbmlid))
            var.setTaskReference(taskref)
            datagen_ids[taskref].append((dgid, sbmlid))
    return datagen_ids
                
def addReport(doc, datagen_ids, task_times):
    for taskref in datagen_ids:
        if doc.getOutput("autogen_report_for_" + taskref) == None:
            report = doc.createReport()
            report.setId("autogen_report_for_" + taskref)
            report.setName("Auto-generated report for " + taskref + ", including all symbols in SBML with mathematical meaning, both constant and variable.")
            if taskref in task_times:
                time = task_times[taskref]
                dataset = report.createDataSet()
                dataset.setId("autogen_time_for_" + taskref)
                dataset.setDataReference(time)
                dataset.setLabel("Time")
            for (dgid, sbmlid) in datagen_ids[taskref]:
                dataset = report.createDataSet()
                dataset.setId("autogen_" + taskref + "_" + sbmlid[0])
                dataset.setDataReference(dgid)
                dataset.setLabel(sbmlid[0])
    

def addPlot(doc, datagen_ids, task_times):
    for out in range(doc.getNumOutputs()):
        output = doc.getOutput(out)
        if output.getTypeCode() != libsedml.SEDML_OUTPUT_REPORT:
            #Don't create a new plot if a plot exists.
            return
    for taskref in datagen_ids:
        if taskref not in task_times:
            continue
        if doc.getOutput("autogen_plot_for_" + taskref) == None:
            plot = doc.createPlot2D()
            plot.setId("autogen_plot_for_" + taskref)
            plot.setName("Auto-generated plot for " + taskref + ", including all species.")
            time = task_times[taskref]
            xaxis = plot.createXAxis()
            xaxis.setName("Time")
            xaxis.setType(libsedml.SEDML_AXISTYPE_LINEAR)
            yaxis = plot.createYAxis()
            yaxis.setName("Species")
            yaxis.setType(libsedml.SEDML_AXISTYPE_LINEAR)
            for (dgid, sbmlid) in datagen_ids[taskref]:
                if sbmlid[1] == "species":
                    curve = plot.createCurve()
                    curve.setLogX(False)
                    curve.setLogY(False)
                    curve.setXDataReference(time)
                    curve.setYDataReference(dgid)
                    curve.setId("autogen_curve_" + taskref + "_" + sbmlid[0])
                    #curve.setDataReference(dgid)
                    curve.setName(sbmlid[0])
            if plot.getNumCurves()==0:
                plot.setName("Auto-generated plot for " + taskref + ", including all parameters.")
                yaxis.setName("Parameter")
                for (dgid, sbmlid) in datagen_ids[taskref]:
                    if sbmlid[1] == "parameter":
                        curve = plot.createCurve()
                        curve.setLogX(False)
                        curve.setLogY(False)
                        curve.setXDataReference(time)
                        curve.setYDataReference(dgid)
                        curve.setId("autogen_curve_" + taskref + "_" + sbmlid[0])
                        #curve.setDataReference(dgid)
                        curve.setName(sbmlid[0])
            if plot.getNumCurves()==0:
                plot.setName("Auto-generated plot for " + taskref + ", including all qualitative species.")
                yaxis.setName("Qualitative Species")
                for (dgid, sbmlid) in datagen_ids[taskref]:
                    if sbmlid[1] == "qual_species":
                        curve = plot.createCurve()
                        curve.setLogX(False)
                        curve.setLogY(False)
                        curve.setXDataReference(time)
                        curve.setYDataReference(dgid)
                        curve.setId("autogen_curve_" + taskref + "_" + sbmlid[0])
                        #curve.setDataReference(dgid)
                        curve.setName(sbmlid[0])
            if plot.getNumCurves()==0:
                print("No data found for any curve.")
                assert(False)
                

def run(sedml_filenames, sbml_filenames):
    if len(sedml_filenames) == 0:
        create_generic_sedml(sedml_filenames, sbml_filenames)
        
    for sedml_filename in sedml_filenames:
        doc = libsedml.readSedMLFromFile(sedml_filename)
        model_ids = matchSBMLIds(doc, sbml_filenames)
        task_ids = matchTasks(doc, model_ids)
        task_times = matchTaskTimes(doc, task_ids)
        datagen_ids = defineDatagenForAllTargets(doc, task_ids)
        addReport(doc, datagen_ids, task_times)
        addPlot(doc, datagen_ids, task_times)
        
        libsedml.writeSedMLToFile(doc, sedml_filename)
