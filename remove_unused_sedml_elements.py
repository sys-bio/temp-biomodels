import libsedml
import os

def hasTime(plot):
    doc = plot.getSedDocument()
    for curve in plot.getListOfCurves():
        xdg = doc.getDataGenerator(curve.getXDataReference())
        var = xdg.getVariable(0)
        if var.isSetSymbol():
            if var.getSymbol() == "urn:sedml:symbol:time":
                return True
    return False


def checkRepeats(plot):
    doc = plot.getSedDocument()
    for curve in plot.getListOfCurves():
        ydg = doc.getDataGenerator(curve.getYDataReference())
        var = ydg.getVariable(0)
        if var.isSetTaskReference():
            task = doc.getTask(var.getTaskReference())
            if isinstance(task, libsedml.SedRepeatedTask):
                range = task.getRange(0)
                if isinstance(range, libsedml.SedUniformRange):
                    return (True, range.getNumberOfPoints())
                if isinstance(range, libsedml.SedVectorRange):
                    return (True, range.getNumValues())
                raise("Unimplemented Range type:\n" + range.toSed())
    return (False, 1)
    

    

def choose_between(plotlist):
    unlikely = []
    possible = []
    good = []
    for plot in plotlist:
        if not isinstance(plot, libsedml.SedPlot2D):
            raise("Unable to parse surface plots.")
        hastime = hasTime(plot)
        isrepeat, reps = checkRepeats(plot)
        if hastime:
            if isrepeat:
                if reps <= 30:
                    good.append(plot)
                else:
                    unlikely.append(plot)
            else:
                possible.append(plot)
        else:
            if isrepeat:
                good.append(plot)
            else:
                possible.append(plot)
        print(plot.toSed())
    if len(good) > 0:
        #If there was a better option, don't use the worse one
        unlikely.extend(possible)
        return unlikely
    if len(possible) > 0:
        return unlikely
    return []

def remove_duplicate_plots(doc):
    """ Remove any duplicate plots

    Args:
        doc (:obj:`libsedml.SedMLDocument`): Document
    """

    changed = False

    # Collect plot names
    names = {}
    for plot in doc.getListOfOutputs():
        if isinstance(plot, libsedml.SedPlot):
            if plot.isSetName():
                name = plot.getName()
                if name not in names:
                    names[name] = []
                names[name].append(plot)

    for name in names:
        if len(names[name]) > 1:
            for plot in choose_between(names[name]):
                doc.removeOutput(plot.getId())
                changed = True
            
    # write corrected SED-ML
    return changed


def run(id, sedml_filenames):
    for sedml_filename in sedml_filenames:
        doc = libsedml.readSedMLFromFile(sedml_filename)
        changed = remove_duplicate_plots(doc)
        if (changed):
            # libsedml.writeSedMLToFile(doc, sedml_filename)
            print(id, os.path.basename(sedml_filename))
