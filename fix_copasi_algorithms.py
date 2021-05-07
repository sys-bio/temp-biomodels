import copy
import glob
import libsedml
import lxml.etree
import os


def get_algorithms(dirname):
    filenames = sorted(glob.glob(os.path.join(dirname, '**', '*.cps'), recursive=True))
    time_course_method_types = {}
    parameters = {}
    for filename in filenames:
        root = lxml.etree.parse(filename).getroot()
        namespaces = {'copasi': root.nsmap[None]}
        time_course_method = root.xpath(
            '/copasi:COPASI/copasi:ListOfTasks/copasi:Task[@type="timeCourse"]/copasi:Method', namespaces=namespaces)[0]
        time_course_method_type = time_course_method.attrib['type']
        if time_course_method_type not in time_course_method_types:
            time_course_method_types[time_course_method_type] = []
        time_course_method_types[time_course_method_type].append(filename)

        for copasi_param in time_course_method.xpath('copasi:Parameter', namespaces=namespaces):
            copasi_param_type = copasi_param.attrib['type']
            if copasi_param_type == 'bool':
                value = copasi_param.attrib['value'] == '1'
            elif copasi_param_type in ['integer', 'unsignedInteger']:
                value = int(copasi_param.attrib['value'])
            elif copasi_param_type in ['float', 'unsignedFloat']:
                value = float(copasi_param.attrib['value'])
            else:
                raise Exception('{}: {}'.format(filename, copasi_param.attrib['name']))
            parameter_name = copasi_param.attrib['name']

            if parameter_name not in parameters:
                parameters[parameter_name] = {}
            if value not in parameters[parameter_name]:
                parameters[parameter_name][value] = []
            parameters[parameter_name][value].append(filename)

    non_lsoda_filenames = set()
    for time_course_method_type, filenames in time_course_method_types.items():
        if time_course_method_type != 'Deterministic(LSODA)':
            non_lsoda_filenames.update(filenames)

    return time_course_method_types, parameters


ALGORITHMS = {
    os.path.join('BIOMD0000000569', 'Dutta-Roy2015.sedml'): 'KISAO_0000027',
    os.path.join('BIOMD0000000926', 'Rhodes2019-Immune-Mediated theory of Metastasis.sedml'): 'KISAO_0000566',
    os.path.join('BIOMD0000000952', 'Rodenfels2019_V1.sedml'): 'KISAO_0000304',
}

DEFAULT_PARAMETERS = {
    'KISAO_0000027': {
        'KISAO_0000415': '1000000',
        'KISAO_0000488': None,
    },
    'KISAO_0000560': {
        'KISAO_0000211': '1e-12',
        'KISAO_0000216': 'false',
        'KISAO_0000415': '10000',
        'KISAO_0000467': None,
        'KISAO_0000209': '1e-6',
    },
    'KISAO_0000304': {
        'KISAO_0000211': '1e-6',
        'KISAO_0000559': '0.001',
        'KISAO_0000216': 'false',
        'KISAO_0000415': '1000000000',
        'KISAO_0000209': '1e-4',
    },
    'KISAO_0000566': {
        'KISAO_0000211': '1e-6',
        'KISAO_0000565': '1e-6',
        'KISAO_0000567': 'true',
        'KISAO_0000415': '100',
        'KISAO_0000483': '0.0001',
    },
}

ALT_PARAMETERS = {
    os.path.join('BIOMD0000000627', 'BIOMD0000000627.sedml'): {
        'KISAO_0000467': '1',
    },
    os.path.join('BIOMD0000000718', 'Li2008_reactions.sedml'): {
        'KISAO_0000216': 'true',
    },
    os.path.join('BIOMD0000000723', 'Weis2014.sedml'): {
        'KISAO_0000216': 'true',
    },
}


def run(id, dirname):
    if not glob.glob(os.path.join(dirname, '**', '*.cps'), recursive=True):
        return

    time_course_method_types, parameters = get_algorithms(dirname)

    sedml_filenames = glob.glob(os.path.join(dirname, '**', '*.sedml'), recursive=True)
    sedml_filenames.sort()
    for sedml_filename in sedml_filenames:
        rel_sedml_filename = os.path.relpath(sedml_filename, dirname)
        algorithm_kisao_id = ALGORITHMS.get(os.path.join(id, rel_sedml_filename), 'KISAO_0000560')

        doc = libsedml.readSedMLFromFile(sedml_filename)

        for simulation in doc.getListOfSimulations():
            if isinstance(simulation, libsedml.SedUniformTimeCourse):
                algorithm = simulation.getAlgorithm()
                algorithm.setKisaoID(algorithm_kisao_id)

                assert algorithm.getNumAlgorithmParameters() == 0

                parameter_values = copy.copy(DEFAULT_PARAMETERS[algorithm_kisao_id])
                for parameter_kisao_id, value in ALT_PARAMETERS.get(os.path.join(id, rel_sedml_filename), {}).items():
                    parameter_values[parameter_kisao_id] = value

                if algorithm_kisao_id == 'KISAO_0000560':
                    parameter_values['KISAO_0000415'] = str(sorted(list(parameters['Max Internal Steps'].keys()))[-1])

                for parameter_kisao_id, value in parameter_values.items():
                    if value is not None:
                        algorithm_parameter = algorithm.createAlgorithmParameter()
                        algorithm_parameter.setKisaoID(parameter_kisao_id)
                        algorithm_parameter.setValue(value)

        libsedml.writeSedML(doc, sedml_filename)
