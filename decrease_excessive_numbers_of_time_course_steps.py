import libsedml


def decrease_excessive_numbers_of_time_course_steps(filename, max_number_of_steps=1000):
    """ Decrease numbers of steps of uniform time courses

    Args:
        filename (:obj:`str`): file name
        max_number_of_steps (:obj:`int`, optional): maximum number of steps of a uniform time course
    """
    doc = libsedml.readSedMLFromFile(filename)

    changed = False

    # Set a maximum number of timecourse steps.
    for sim in doc.getListOfSimulations():
        if isinstance(sim, libsedml.SedUniformTimeCourse):
            if sim.getNumberOfSteps() > max_number_of_steps:
                sim.setNumberOfSteps(max_number_of_steps)
                changed = True

    # write corrected SED-ML
    if changed:
        libsedml.writeSedML(doc, filename)


def run(sedml_filenames):
    for sedml_filename in sedml_filenames:
        decrease_excessive_numbers_of_time_course_steps(sedml_filename)
