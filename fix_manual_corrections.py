import os

FIXES = {
    'BIOMD0000000806/Macrophages Plasticity b.sedml': [
        {
            'filename': 'Macrophages Plasticity b.sedml',
            'old': 'target="/sbml:sbml/sbml:modela/sbml:listofParameters/sbml:parameter[@id=&apos;v_r_m2&apos;]@value"',
            'new': 'target="/sbml:sbml/sbml:modela/sbml:listofParameters/sbml:parameter[@id=&apos;v_r_m2&apos;]/@value"',
        },
        {
            'filename': 'Macrophages Plasticity b.sedml',
            'old': '<model id="modelb" language="urn:sedml:language:sbml" source="model">',
            'new': '<model id="modelb" language="urn:sedml:language:sbml" source="#model">',
        },
    ],
    'BIOMD0000000618/BIOMD0000000618.sedml': [
        {
            'filename': 'BIOMD0000000618.sedml',
            'old': '<model id="model2" language="urn:sedml:language:sbml" source="model1">',
            'new': '<model id="model2" language="urn:sedml:language:sbml" source="#model1">',
        }
    ],
    # 'BIOMD0000000637/Bush2016-Simplified-Carrousel-model-of-GPCR.sedml': [
    #     {
    #         'filename': 'Bush2016-Simplified-Carrousel-model-of-GPCR.sedml',
    #         'old': '<dataSet id="ds_4_task3" dataReference="_1_task3"/>',
    #         'new': '<dataSet id="ds_4_task3" label="p7" dataReference="_1_task3"/>',
    #     }
    # ],
    'BIOMD0000000816/OV25.sedml': [
        {
            'filename': 'OV25.sedml',
            'old': '<model language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '',
        },
        {
            'filename': 'OV25.sedml',
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000816/OV5.sedml': [
        {
            'filename': 'OV5.sedml',
            'old': '<model language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '',
        },
        {
            'filename': 'OV5.sedml',
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000817/OV25.sedml': [
        {
            'filename': 'OV25.sedml',
            'old': '<model language="urn:sedml:language:sbml" source="model"/>',
            'new': '',
        },
        {
            'filename': 'OV25.sedml',
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000817/OV5.sedml': [
        {
            'filename': 'OV5.sedml',
            'old': '<model language="urn:sedml:language:sbml" source="model"/>',
            'new': '',
        },
        {
            'filename': 'OV5.sedml',
            'old': '<model id="model.xml" language="urn:sedml:language:sbml" source="model.xml"/>',
            'new': '<model id="model" language="urn:sedml:language:sbml" source="model.xml"/>',
        },
    ],
    'BIOMD0000000810/Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.sedml': [
        {
            'filename': 'Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.sedml',
            'old': '<model id="Ganguli2018-immuno regulatory mechanisms in tumor microenvironment"',
            'new': '<model id="model1"',
        }
    ],
    'BIOMD0000000966/Cui2008.sedml': [
        {
            'filename': 'Cui2008.xml',
            'old': 'render:globalRenderInformation',
            'new': 'render:renderInformation',
        }
    ],
    'BIOMD0000000967/McLean1991.sedml': [
        {
            'filename': 'McLean1991.xml',
            'old': 'render:globalRenderInformation',
            'new': 'render:renderInformation',
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
    id = name.partition('/')[0]
    fixes = FIXES.get(name, None)
    if not fixes:
        return

    for fix in fixes:
        filename = os.path.join('fully-fixed-entries', id, fix['filename'])

        with open(filename, 'r') as file:
            contents = file.read()

        contents = contents.replace(fix['old'], fix['new'])

        with open(filename, 'w') as file:
            file.write(contents)
