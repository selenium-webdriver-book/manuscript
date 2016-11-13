#!/bin/sh
set -eux

gitbook pdf
gitbook epub
gitbook mobi
