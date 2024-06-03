import libsedml
import kisao



def make_algorithms_generic(doc):
    changed = False
    Kisao = kisao.Kisao()
    generic_ode = Kisao.get_term("KISAO_0000694")
    generic_ss = Kisao.get_term("KISAO_0000407")
    for sim in doc.getListOfSimulations():
        alg = sim.getAlgorithm()
        if alg:
            kid = alg.getKisaoID()
            alg_term = Kisao.get_term(kid)
            alts = kisao.utils.get_substitutable_algorithms(alg_term)
            if generic_ode in alts:
                alg.setKisaoID(694) #'ODE solver'
                alg.setName("ODE solver")
                changed = True
            elif generic_ss in alts:
                alg.setKisaoID(407) #'ODE solver'
                alg.setName("Steady state root-finding method")
                changed = True
    return changed


def run(id, sedml_filenames):
    for sedml_filename in sedml_filenames:
        doc = libsedml.readSedMLFromFile(sedml_filename)
        changed = False
        changed = make_algorithms_generic(doc) or changed
        if (changed):
            # print("Modified", id, os.path.basename(sedml_filename))
            libsedml.writeSedMLToFile(doc, sedml_filename)
