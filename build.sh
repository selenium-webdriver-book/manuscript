#!/bin/sh
set -eux

git clean -fxd

gitbook install

# ePub
gitbook epub

./patch-epub.sh

# brew install epubcheck
epubcheck book.epub

# other
gitbook pdf
gitbook mobi
