#!/bin/bash

# list of languages of interest,
# with aspell naming convention
langs="it fr_FR-60 es pt_PT de_DE"
# desired size of final word list
# final list may be shorter due to random duplicates
pick_size="600"

rm -f wordset_*

for l in $langs ; do
  l=${l/_*/}
  num_words="$( wc -l dict_aspell_$l | tr -s ' ' | cut -d ' ' -f 2 )"

# using Linux utility jot to generate random numbers within a range
  jot -r $pick_size 1 $num_words \
    | while read n ; do
        sed -n "${n}p" dict_aspell_$l
      done >wordset_${l}_unsort

  sort wordset_${l}_unsort | uniq >wordset_${l}
  rm wordset_${l}_unsort
done
