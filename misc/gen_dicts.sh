#!/bin/bash

# uses linux tool 'aspell'

# on macOS, install eg with Homebrew
#brew install aspell
# on Linux, use system package manager
# language dictionaries may be distinct packages


# list of languages of interest,
# with aspell naming convention
langs="it fr_FR-60 es pt_PT de_DE"

rm -f dict_aspell_*

for l in $langs ; do
  aspell -l $l dump master \
    | sed 's;/.*;;g' \
    | grep -v \' \
    | awk '{ if(length>5){print} }' \
    >dict_aspell_${l/_*/}
done 
