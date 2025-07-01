import os
import shutil



def run(id, temp_entry_dir, sedml_filenames):
    replace_dir = "replacement_sedml/" + id
    if os.path.exists(replace_dir):
        for filename in sedml_filenames:
            os.remove(filename)
        shutil.copytree(replace_dir, temp_entry_dir, dirs_exist_ok=True)
    jin_dir = "jin_curation/" + id
    if os.path.exists(jin_dir):
        for filename in sedml_filenames:
            os.remove(filename)
        shutil.copytree(jin_dir, temp_entry_dir, dirs_exist_ok=True)
