#!/usr/bin/env python3

from certifi import where
from googlesearch import search as google
import os
import requests

max_files = 5  # how many files to download.
download_path = 'pdf/'  # where to save them to.

if __name__ == '__main__':
    cafile = where()  # get local cert of python instance for https downloads.

    # fetch results from google:
    results = google("site:technikum-wien.at filetype:pdf", num_results=max_files)

    # download the file for each search result:
    for i, url in enumerate(results):
        # execute http get request on:
        res = requests.get(url, allow_redirects=True, verify=cafile)

        # use basename as filename:
        filename = os.path.basename(res.url)

        # if the basename is empty use loop variable as filename:
        if not filename:
            filename = str(i) + '.pdf'

        print('fetching: ' + filename)  # print progress.
        with open(download_path + filename, "wb") as file:  # open as write/binary.
            file.write(res.content)  # save file.
