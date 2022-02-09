import libsedml
import os
import csv

table = []

with open('Revised output names.csv', encoding="utf-8") as csvfile:
    rev_reader = csv.reader(csvfile)
    for row in rev_reader:
        table.append(row)


def run(id, sedml_filenames):
    if id in [row[0] for row in table]:
        for row in table:
            if not id==row[0]:
                continue
            for sedml_filename in sedml_filenames:
                if row[2] in sedml_filename:
                    doc = libsedml.readSedMLFromFile(sedml_filename)
                    element = doc.getElementBySId(row[5])
                    element.setName(row[7])
                    libsedml.writeSedMLToFile(doc, sedml_filename)
