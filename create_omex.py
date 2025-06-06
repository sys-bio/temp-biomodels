from biosimulators_utils.combine.io import CombineArchiveWriter  # type: ignore
from biomodels_qc.utils import build_combine_archive

import os
import glob

combine_writer = CombineArchiveWriter()


def process(project_id, project_path, omex_dir, write_omex, sbml_master = None):
    manifest_filename = os.path.join(project_path, 'manifest.xml')
    # sedml_filenames = glob.glob(os.path.join(project_path, '**', '*.sedml'), recursive=True)
    # sedml_locations = [os.path.relpath(path, project_path) for path in sedml_filenames]
    master_files = []
    if sbml_master:
        master_files.append(sbml_master)
    if os.path.exists(manifest_filename):
        #Have to do this, otherwise build_combine_archive creates a new one!
        os.remove(manifest_filename)
    archive = build_combine_archive(project_path, master_files)
    if write_omex:
        combine_writer.run(archive, project_path, omex_dir + "/" + project_id + ".omex")
    #Write the new manifest.xml file:
    combine_writer.write_manifest(archive.contents, manifest_filename)
