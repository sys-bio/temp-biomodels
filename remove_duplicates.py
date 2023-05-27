# -*- coding: utf-8 -*-

#From https://stackoverflow.com/questions/748675/finding-duplicate-files-and-removing-them

from collections import defaultdict
import hashlib
import os
import sys


def chunk_reader(fobj, chunk_size=1024):
    """Generator that reads a file in chunks of bytes"""
    while True:
        chunk = fobj.read(chunk_size)
        if not chunk:
            return
        yield chunk


def get_hash(filename, first_chunk_only=False, hash=hashlib.sha1):
    hashobj = hash()
    file_object = open(filename, 'rb')

    if first_chunk_only:
        hashobj.update(file_object.read(1024))
    else:
        for chunk in chunk_reader(file_object):
            hashobj.update(chunk)
    hashed = hashobj.digest()

    file_object.close()
    return hashed


def check_for_duplicates(path, hash=hashlib.sha1):
    hashes_by_size = defaultdict(list)  # dict of size_in_bytes: [full_path_to_file1, full_path_to_file2, ]
    hashes_on_1k = defaultdict(list)  # dict of (hash1k, size_in_bytes): [full_path_to_file1, full_path_to_file2, ]
    hashes_full = {}   # dict of full_file_hash: full_path_to_file_string
    duplicates = []

    for dirpath, dirnames, filenames in os.walk(path):
        # get all files that have the same size - they are the collision candidates
        for filename in filenames:
            if "curation_image" in filename:
                continue
            full_path = os.path.join(dirpath, filename)
            try:
                # if the target is a symlink (soft one), this will 
                # dereference it - change the value to the actual target file
                full_path = os.path.realpath(full_path)
                file_size = os.path.getsize(full_path)
                hashes_by_size[file_size].append(full_path)
            except (OSError,):
                # not accessible (permissions, etc) - pass on
                continue


    # For all files with the same file size, get their hash on the 1st 1024 bytes only
    for size_in_bytes, files in hashes_by_size.items():
        if len(files) < 2:
            continue    # this file size is unique, no need to spend CPU cycles on it

        for filename in files:
            try:
                small_hash = get_hash(filename, first_chunk_only=True)
                # the key is the hash on the first 1024 bytes plus the size - to
                # avoid collisions on equal hashes in the first part of the file
                # credits to @Futal for the optimization
                hashes_on_1k[(small_hash, size_in_bytes)].append(filename)
            except (OSError,):
                # the file access might've changed till the exec point got here 
                continue

    # For all files with the hash on the 1st 1024 bytes, get their hash on the full file - collisions will be duplicates
    for __, files_list in hashes_on_1k.items():
        if len(files_list) < 2:
            continue    # this hash of fist 1k file bytes is unique, no need to spend cpy cycles on it

        for filename in files_list:
            try: 
                full_hash = get_hash(filename, first_chunk_only=False)
                duplicate = hashes_full.get(full_hash)
                if duplicate:
                    duplicates.append((filename, duplicate))
                    # print("Duplicate found: {} and {}".format(filename, duplicate))
                else:
                    hashes_full[full_hash] = filename
            except (OSError,):
                # the file access might've changed till the exec point got here 
                continue
    return duplicates

def run(dirname: str):
    """
    Remove duplicate files.

    Args:
        dirname (:obj:`str`): the directory in which duplicate files will be removed
    """
    dupes = check_for_duplicates(dirname)
    for (file1, file2) in dupes:
        if "manual" in file1 and "manual" not in file2:
            os.remove(file1)
        else:
            os.remove(file2)
