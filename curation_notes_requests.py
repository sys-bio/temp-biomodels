# -*- coding: utf-8 -*-

from bs4 import BeautifulSoup
from glob import glob
import requests
import os, re

def acquire_notes(soup):
    curation_divs = soup.find_all(class_='small-12 medium-6 large-6 columns')
    for div in curation_divs:
        if re.search('img', str(div)):
            continue
        if div.find('strong'):
            return div.find('div').text

def export_notes(directory, curation_notes):
    if curation_notes is not None:
        with open(os.path.join(directory, f'{model_id}_curation_notes.txt'), 'w', encoding = 'utf-8') as out:
            out.write(curation_notes.strip())
    else:
        print(directory)

for model_path in glob(os.path.join('..', 'temp-biomodels', 'final', '*')):
    # acquire the raw HTML
    model_id = os.path.basename(model_path)
    url = f'https://www.ebi.ac.uk/biomodels/{model_id}#Curation'
    response = requests.get(url, headers={'accept': 'application/html'})
    soup = BeautifulSoup(response.text, 'lxml')

    # acquire and export the curation notes
    curation_notes = acquire_notes(soup)
    export_notes(model_path, curation_notes)