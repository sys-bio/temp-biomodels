# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
from base64 import b64decode
from glob import glob
import imghdr
import os
import requests
import warnings


def acquire_note(directory, div):
    if div.find('div').text is not None:
        with open(os.path.join(directory, f'{model_id}_curation_notes.txt'), 'w', encoding='utf-8') as out:
            out.write(div.find('div').text.strip())
    else:
        warnings.warn(f'Curation note could not be parsed for {model_id}', UserWarning)


def acquire_image(directory, div):
    if div.find('img')['src'] is not None:
        for img_file in div.find_all('img'):
            img_format = img_file['src'].partition('/')[2].partition(';')[0]
            img_data = b64decode(img_file['src'].partition(',')[2])
            img_filename = os.path.join(directory, f'{model_id}_curation_image.{img_format}')
            with open(img_filename, 'wb') as out:
                out.write(img_data)
            correct_img_format = imghdr.what(img_filename)
            if correct_img_format != img_format:
                os.rename(img_filename, os.path.join(directory, f'{model_id}_curation_image.{correct_img_format}'))
    else:
        warnings.warn(f'Curation image could not be found for {model_id}', UserWarning)


for model_path in glob(os.path.join('..', 'temp-biomodels', 'manual-fixes', '*')):
    # acquire the raw HTML
    model_id = os.path.basename(model_path)
    url = f'https://www.ebi.ac.uk/biomodels/{model_id}#Curation'
    response = requests.get(url, headers={'accept': 'application/html'})
    soup = BeautifulSoup(response.text, 'lxml')

    # acquire and export the curation notes
    curation_divs = soup.find_all(class_='small-12 medium-6 large-6 columns')
    for div in curation_divs:
        if div.find('strong'):
            acquire_note(model_path, div)
        if div.find('img'):
            acquire_image(model_path, div)
