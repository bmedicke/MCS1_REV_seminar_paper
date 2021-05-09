#!/usr/bin/env python3

from pdfminer.pdfdocument import PDFDocument
from pdfminer.pdfparser import PDFParser
import os
import pdfminer.high_level
import pprint

# set of substrings to look for in pdf:
wordlist = {'@', 'passwort', 'password'}
download_path = 'pdf/'


# fetch the text representation from a pdf:
def get_raw_text_from_pdf(path):
    return pdfminer.high_level.extract_text(path)


# compare passed text with wordlist and print matches:
def print_wordlist_matches(text):
    formatted_text = set(text.lower().replace('\n', '').split(' '))
    matched_words = set()
    for word in formatted_text:
        for entry in wordlist:
            if entry in word:
                matched_words.add(word)
    print('-- wordlist --')
    print('matches found: ')
    print(matched_words)


# extract and print metadata:
def print_metadata(path):
    with open(path, 'rb') as f:
        print('-- metadata --')
        parser = PDFParser(f)
        doc = PDFDocument(parser)
        meta = doc.info[0]
        pprint.pprint(meta)


if __name__ == '__main__':
    # iterate through files in folder and print interessting data:
    for filename in os.listdir(download_path):
        file = download_path + filename
        print('== ' + file + ' ==')
        print_metadata(file)
        print_wordlist_matches(get_raw_text_from_pdf(file))
