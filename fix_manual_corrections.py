import os

FINAL_ENTRIES_DIR = os.path.join(os.path.dirname(__file__), 'final')

FIXES = {
    'BIOMD0000000806': [
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
    'BIOMD0000000618': [
        {
            'filename': 'BIOMD0000000618_SED-ML.xml',
            'old': '<model id="model2" language="urn:sedml:language:sbml" source="model1">',
            'new': '<model id="model2" language="urn:sedml:language:sbml" source="#model1">',
        }
    ],
    # 'BIOMD0000000637': [
    #     {
    #         'filename': 'Bush2016-Simplified-Carrousel-model-of-GPCR.sedml',
    #         'old': '<dataSet id="ds_4_task3" dataReference="_1_task3"/>',
    #         'new': '<dataSet id="ds_4_task3" label="p7" dataReference="_1_task3"/>',
    #     }
    # ],
    'BIOMD0000000816': [
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
    'BIOMD0000000817': [
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
    'BIOMD0000000810': [
        {
            'filename': 'Ganguli2018-immuno regulatory mechanisms in tumor microenvironment.sedml',
            'old': '<model id="Ganguli2018-immuno regulatory mechanisms in tumor microenvironment"',
            'new': '<model id="model1"',
        }
    ],
    'BIOMD0000000966': [
        {
            'filename': 'Cui2008.xml',
            'old': 'render:globalRenderInformation',
            'new': 'render:renderInformation',
        }
    ],
    'BIOMD0000000967': [
        {
            'filename': 'McLean1991.xml',
            'old': 'render:globalRenderInformation',
            'new': 'render:renderInformation',
        }
    ],
    'BIOMD0000000344': [
        {
            'filename': 'MODEL1005280000_highstress.xml',
            'old': '\nte:</b> </p>',
            'new': '\n<p><b>te:</b> </p>',
        }
    ],

}


def run(id):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        id (:obj:`str`): id of BioModels entry
    """
    fixes = FIXES.get(id, None)
    if not fixes:
        return

    for fix in fixes:
        filename = os.path.join(FINAL_ENTRIES_DIR, id, fix['filename'])

        with open(filename, 'r') as file:
            contents = file.read()

        contents = contents.replace(fix['old'], fix['new'])

        with open(filename, 'w') as file:
            file.write(contents)
