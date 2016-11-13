#!/bin/sh
set -eux

gitbook pdf
gitbook epub
gitbook mobi

./patch-epub.sh

# brew install epubcheck
epubcheck book.epub
