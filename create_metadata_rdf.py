# -*- coding: utf-8 -*-
"""
Created on Tue Mar 21 12:33:50 2023

@author: Lucian
"""

import os
import libsbml
from biosimulators_utils.ref.utils import get_reference
from biosimulators_utils.config import get_config
from biosimulators_utils.ref.utils import get_pubmed_central_open_access_graphics
from biosimulators_utils.omex_meta.io import BiosimulationsOmexMetaWriter
from biosimulators_utils.omex_meta.data_model import OmexMetadataOutputFormat
import Bio.Entrez
Bio.Entrez.email = 'lpsmith@uw.edu'

def parseDocAndAddToMetadata(filename, metadata, master, pubmedIDs, doiIDs, masterIDs):
    doc = libsbml.readSBMLFromFile(filename)
    model = doc.getModel()
    
    if master:
        note = None
        notes = model.getNotes()
        if notes:
            note = notes.getChild(0).toXMLString()
        metadata['description'] = note
        metadata['title'] = model.getName()

    annotations = model.getAnnotation()
    
    cvterms = libsbml.CVTermList()
    libsbml.RDFAnnotationParser.parseRDFAnnotation(annotations, cvterms)
    
    for cv in range(cvterms.getSize()):
        cvterm = cvterms.get(cv)
        for r in range(cvterm.getNumResources()):
            rURI = cvterm.getResourceURI(r)
            if "pubmed" in rURI:
                pmid = rURI.split("/")[-1]
                pubmedIDs.add(pmid)
                if master:
                    masterIDs.add(pmid)
            if "identifiers.org/doi/" in rURI:
                uripos = rURI.find("org/doi/")
                doiIDs.add(rURI[uripos+8:])
                if master:
                    masterIDs.add(rURI[uripos+8:])

    
def addCitationsToMetadata(pubmedIDs, doiIDs, masterIDs, metadata):
    citations = []
    mastercitations = []
    for pmid in pubmedIDs:
        citation = get_reference(pubmed_id=pmid)
        citations.append(citation)
        if pmid in masterIDs:
            mastercitations.append(citation)

    for doiID in doiIDs:
        citation = get_reference(doi=doiID)
        citations.append(citation)
        if doiID in masterIDs:
            mastercitations.append(citation)

    for citation in citations:
        cite = {
            "uri": citation.get_uri(),
            "label": citation.get_citation(),
            }
        metadata['citations'].append(cite)
        if citation in mastercitations and citation.title:
            metadata['title'] = citation.title
    
        if citation.pubmed_central_id:
            thumbnails = get_pubmed_central_open_access_graphics(
                citation.pubmed_central_id,
                ".",
                )
            metadata['thumbnails'] = [os.path.relpath(thumbnail.filename, ".") for thumbnail in thumbnails]



def run(id, sbml_filenames, temp_entry_dir, sbml_master):
    metadata = {
        "combine_archive_uri": 'http://omex-library.org/' + id + '.omex',
        "uri": '.',
        'citations': [],
        'keywords': [
            'Biomodels',
            ],
        }
    pubmedIDs = set()
    doiIDs = set()
    masterIDs = set()
    for filename in sbml_filenames:
        master = False
        if sbml_master in filename:
            master = True
        parseDocAndAddToMetadata(filename, metadata, master, pubmedIDs, doiIDs, masterIDs)
    if len(masterIDs)==0:
        print("No master SBML file for", id)
        print("Original master sbml file:", sbml_master)
        assert(False) #Need to find new master SBML filename
    addCitationsToMetadata(pubmedIDs, doiIDs, masterIDs, metadata)
    metadata_filename = os.path.join(temp_entry_dir, 'metadata.rdf')
    config = get_config()
    config.OMEX_METADATA_OUTPUT_FORMAT = OmexMetadataOutputFormat.turtle
    BiosimulationsOmexMetaWriter().run([metadata], metadata_filename, config=config)
