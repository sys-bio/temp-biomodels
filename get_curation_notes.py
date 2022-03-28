# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
from base64 import b64decode
from glob import glob
import requests
import os
import re


def acquire_notes(directory, div):
    if div.find('div').text is not None:
        with open(os.path.join(directory, f'{model_id}_curation_notes.txt'), 'w', encoding='utf-8') as out:
            out.write(div.find('div').text.strip())
    else:
        print(directory)


def acquire_images(directory, div):
    if div.find('img')['src'] is not None:
        for img_file in div.find_all('img'):
            img_format = img_file['src'].partition('/')[2].partition(';')[0]
            img_data = b64decode(img_file['src'].partition(',')[2])
            img_filename = os.path.join(directory, f'{model_id}_curation_image.{img_format}')
            with open(img_filename, 'wb') as out:
                out.write(img_data)
    else:
        print(directory)


for model_path in glob(os.path.join('..', 'temp-biomodels', 'final', '*')):
    # acquire the raw HTML
    model_id = os.path.basename(model_path)
    url = f'https://www.ebi.ac.uk/biomodels/{model_id}#Curation'
    response = requests.get(url, headers={'accept': 'application/html'})
    soup = BeautifulSoup(response.text, 'lxml')

    # acquire and export the curation notes
    curation_divs = soup.find_all(class_='small-12 medium-6 large-6 columns')
    for div in curation_divs:
        if div.find('img'):
            acquire_images(model_path, div)
        if div.find('strong'):
            acquire_notes(model_path, div)
