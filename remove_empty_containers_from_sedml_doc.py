import libsedml


def remove_empty_containers(filename):
    """ Remove empty containers

    * Repeated tasks with no subtasks
    * Reports with no data sets
    * Plots with no curves or surfaces

    Args:
        filename (:obj:`str`): file name
    """
    doc = libsedml.readSedMLFromFile(filename)

    changed = False

    # remove repeated tasks with no sub-tasks
    repeated_task_ids = []
    for task in doc.getListOfTasks():
        if isinstance(task, libsedml.SedRepeatedTask):
            repeated_task_ids.append(task.getId())

    while True:
        removed_task_ids = []
        for task_id in list(repeated_task_ids):
            task = doc.getTask(task_id)
            if not task.getNumSubTasks():
                doc.removeTask(task_id)
                repeated_task_ids.remove(task_id)
                removed_task_ids.append(task_id)
                changed = True

        removed_sub_task = False
        for task_id in repeated_task_ids:
            task = doc.getTask(task_id)
            for i_sub_task in range(task.getNumSubTasks()):
                sub_task = task.getSubTask(i_sub_task)
                if sub_task.getTask() in removed_task_ids:
                    task.removeSubTask(i_sub_task)
                    removed_sub_task = True

        if not removed_sub_task:
            break

    # remove outputs with no children
    for output in list(doc.getListOfOutputs()):
        if isinstance(output, libsedml.SedReport):
            if not output.getNumDataSets():
                doc.removeOutput(output.getId())
                changed = True

        elif isinstance(output, libsedml.SedPlot2D):
            if not output.getNumCurves():
                doc.removeOutput(output.getId())
                changed = True

        elif isinstance(output, libsedml.SedPlot3D):
            if not output.getNumSurfaces():
                doc.removeOutput(output.getId())
                changed = True

    # write corrected SED-ML
    if changed:
        libsedml.writeSedML(doc, filename)


def run(sedml_filenames):
    for sedml_filename in sedml_filenames:
        remove_empty_containers(sedml_filename)
