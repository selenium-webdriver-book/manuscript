#! /bin/sh
#
# This script removed not allowed "data-lang" attribute from HTML files.
set -eux

O=$(pwd)
T=$(mktemp -d)

cd $T

unzip -d . $O/book.epub

find . -type f -name '*.html' | xargs sed -i.bak 's/data-lang="[^"]*"//g'
find . -type f -name '*.bak' | xargs rm

zip -u $O/book.epub *
