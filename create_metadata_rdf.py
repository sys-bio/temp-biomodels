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
import operator, glob

class NonStandardRef():
    """ Journal article not from pubmed or doi
    """
    citation: str = None
    uri: str = None
    title: str = None
    authors: str = None
    date: str = None
    
    pubmed_central_id = None


    def __init__(self, citation, uri, title):
        self.citation = citation
        self.uri = uri
        self.title = title

    def get_citation(self):
        return self.citation

    def get_uri(self):
        return self.uri
    
    

no_pubmed_or_doi = {
    "BIOMD0000000358" : NonStandardRef('Stortelder, Walter JH, Pieter Wilhelm Hemker, and Hendrik Coenraad Hemker. "Mathematical modelling in blood coagulation: simulation and parameter estimation." Modelling, Analysis and Simulation [MAS] R 9720 (1997).', "http://www.narcis.nl/publication/RecordID/oai:cwi.nl:4725", "Mathematical modelling in blood coagulation : simulation and parameter estimation"),
    "BIOMD0000000454" : NonStandardRef('Smallbone, Kieran. "Metabolic Control Analysis: Rereading Reder." arXiv preprint arXiv:1305.6449 (2013).', "http://arxiv.org/pdf/1305.6449v1.pdf", "Metabolic Control Analysis: Rereading Reder."),
    "BIOMD0000000455" : NonStandardRef('Smallbone, Kieran. "Metabolic Control Analysis: Rereading Reder." arXiv preprint arXiv:1305.6449 (2013).', "http://arxiv.org/pdf/1305.6449v1.pdf", "Metabolic Control Analysis: Rereading Reder."),
    "BIOMD0000000456" : NonStandardRef('Smallbone, Kieran. "Metabolic Control Analysis: Rereading Reder." arXiv preprint arXiv:1305.6449 (2013).', "http://arxiv.org/pdf/1305.6449v1.pdf", "Metabolic Control Analysis: Rereading Reder."),
    "BIOMD0000000882" : NonStandardRef('Munz, Philip, et al. "When zombies attack!: mathematical modelling of an outbreak of zombie infection." Infectious disease modelling research progress 4 (2009): 133-150.', "http://identifiers.org/isbn/ISBN:1607413477", "When zombies attack!: Mathematical modelling of an outbreak of zombie infection"),
    "BIOMD0000001045" : NonStandardRef('Smith, David, and Lang Moore. "The SIR model for spread of disease-the differential equation model." Convergence (2004).', "https://www.maa.org/press/periodicals/loci/joma/the-sir-model-for-spread-of-disease-the-differential-equation-model", "The SIR Model for Spread of Disease - The Differential Equation Model"),
    }

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
            if "pubmed/" in rURI:
                pmid = rURI.split("/")[-1]
                pubmedIDs.add(pmid)
                if master:
                    masterIDs.add(pmid)
            if "identifiers.org/doi/" in rURI:
                uripos = rURI.find("org/doi/")
                doiIDs.add(rURI[uripos+8:])
                if master:
                    masterIDs.add(rURI[uripos+8:])

def addCitationsToMetadata(pubmedIDs, doiIDs, masterIDs, metadata, id, temp_entry_dir):
    citations = []
    mastercitation = None
    for pmid in pubmedIDs:
        citation = get_reference(pubmed_id=pmid)
        citations.append(citation)
        if pmid in masterIDs:
            if not mastercitation or mastercitation.date < citation.date:
                mastercitation = citation

    for doiID in doiIDs:
        citation = get_reference(doi=doiID)
        citations.append(citation)
        if doiID in masterIDs:
            if not mastercitation or mastercitation.date < citation.date:
                mastercitation = citation

    if len(citations)==0:
        citations.append(no_pubmed_or_doi[id])
        mastercitation = no_pubmed_or_doi[id]

    citations = sorted(citations, key=lambda x : x.get_citation())
    if not mastercitation:
        mastercitation = citations[0]

    for citation in citations:
        cite = {
            "uri": citation.get_uri(),
            "label": citation.get_citation(),
            }
        
        metadata['citations'].append(cite)

        # if citation.pubmed_central_id:
        #     thumbnails = get_pubmed_central_open_access_graphics(
        #         citation.pubmed_central_id,
        #         temp_entry_dir,
        #         )
        #     fileList = glob.glob(temp_entry_dir + '/*.tar.gz')
        #     # Iterate over the list of filepaths & remove each file.
        #     for filePath in fileList:
        #         os.remove(filePath)
        #     metadata['thumbnails'] = [os.path.relpath(thumbnail.filename, temp_entry_dir).replace("\\", "/") for thumbnail in thumbnails]
    
    if mastercitation.title:
        metadata['title'] = mastercitation.title
    if mastercitation.authors:
        metadata['authors'] = mastercitation.authors
    if mastercitation.date:
        metadata['date'] = mastercitation.date

def addThumbnailToMetadata(metadata, temp_entry_dir):
    for root, dirs, files in os.walk(temp_entry_dir):
        for file in files:
            if file[-4:] == ".png":
                if 'thumbnails' not in metadata:
                    metadata['thumbnails'] = []
                metadata['thumbnails'].append(file)




def run(id, sbml_filenames, temp_entry_dir, sbml_master):
    metadata = {
        "combine_archive_uri": 'http://omex-library.org/' + id + '.omex',
        "uri": '.',
        'citations': [],
        'keywords': [
            'Biomodels',
            ],
        # 'contributors': ["The Biomodels Curation Team", "The Center for Reproducible Biomedical Modeling"]
        }
    pubmedIDs = set()
    doiIDs = set()
    masterIDs = set()
    for filename in sbml_filenames:
        master = False
        if sbml_master in filename:
            master = True
        parseDocAndAddToMetadata(filename, metadata, master, pubmedIDs, doiIDs, masterIDs)
    if len(masterIDs)==0 and not len(pubmedIDs)==0 and not len(doiIDs)==0:
        print("No master SBML file for", id)
        print("Original master sbml file:", sbml_master)
        assert(False) #Need to find new master SBML filename
    addCitationsToMetadata(pubmedIDs, doiIDs, masterIDs, metadata, id, temp_entry_dir)
    addThumbnailToMetadata(metadata, temp_entry_dir)
    metadata_filename = os.path.join(temp_entry_dir, 'metadata.rdf')
    config = get_config()
    # config.OMEX_METADATA_OUTPUT_FORMAT = OmexMetadataOutputFormat.turtle
    BiosimulationsOmexMetaWriter().run([metadata], metadata_filename, config=config)
