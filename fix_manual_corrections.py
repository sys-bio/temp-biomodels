FIXES = {
    'BIOMD0000000806/Macrophages Plasticity b.sedml': [
        {
            'old': 'target="/sbml:sbml/sbml:modela/sbml:listofParameters/sbml:parameter[@id=&apos;v_r_m2&apos;]@value"',
            'new': 'target="/sbml:sbml/sbml:modela/sbml:listofParameters/sbml:parameter[@id=&apos;v_r_m2&apos;]/@value"',
        },
        {
            'old': '<model id="modelb" language="urn:sedml:language:sbml" source="model">',
            'new': '<model id="modelb" language="urn:sedml:language:sbml" source="#model">',
        },
    ],
    'BIOMD0000000618/BIOMD0000000618.sedml': [
        {
            'old': '<model id="model2" language="urn:sedml:language:sbml" source="model1">',
            'new': '<model id="model2" language="urn:sedml:language:sbml" source="#model1">',
        }
    ],
    # 'BIOMD0000000637/Bush2016-Simplified-Carrousel-model-of-GPCR.sedml': [
    #     {
    #         'old': '<dataSet id="ds_4_task3" dataReference="_1_task3"/>',
    #         'new': '<dataSet id="ds_4_task3" label="p7" dataReference="_1_task3"/>',
    #     }
    # ],
    'BIOMD0000000816/OV25.sedml': [
        {
            'old': '<model language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '',
        },
        {
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000816/OV5.sedml': [
        {
            'old': '<model language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '',
        },
        {
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000817/OV25.sedml': [
        {
            'old': '<model language="urn:sedml:language:sbml" source="model"/>',
            'new': '',
        },
        {
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000817/OV5.sedml': [
        {
            'old': '<model language="urn:sedml:language:sbml" source="model"/>',
            'new': '',
        },
        {
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000810/Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.sedml': [
        {
            'old': '<model id="Ganguli2018-immuno regulatory mechanisms in tumor microenvironment"',
            'new': '<model id="model1"',
        }
    ],
}


def run(name, filename):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        name (:obj:`str`): file name
        filename (:obj:`str`): path to SED-ML file to fix
    """
    fixes = FIXES.get(name, None)
    if not fixes:
        return

    with open(filename, 'r') as file:
        contents = file.read()

    for fix in fixes:
        contents = contents.replace(fix['old'], fix['new'])

    with open(filename, 'w') as file:
        file.write(contents)
