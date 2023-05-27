# -*- coding: utf-8 -*-

#From https://stackoverflow.com/questions/748675/finding-duplicate-files-and-removing-them

import os


def run(path):
    for dirpath, dirnames, filenames in os.walk(path):
        # get all files that have the same size - they are the collision candidates
        for filename in filenames:
            if os.path.getsize(os.path.join(path, filename)) == 0:
                os.remove(os.path.join(path, filename))
