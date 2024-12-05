import os
import shutil

def run(id, sedml_filenames):
    for filename in sedml_filenames:
        replacement = "replacement_sedml/" + id + "/" + os.path.basename(filename)
        if os.path.exists(replacement):
            os.remove(filename)
            shutil.copy2(replacement, filename)
