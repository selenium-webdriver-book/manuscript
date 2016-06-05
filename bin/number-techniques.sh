#! /bin/sh
set -eu
F=$1
S=${2:-'1'}

printf "%-50s: %2u\n" $F $S
awk "BEGIN {n=$S} { if(sub(/^=== Technique .*:/, \"=== Technique \" n \":\")) {++n;} } 1" $F > tmp
mv tmp $F


TO=$(grep -o '^=== Technique [0-9]*' $F | tail -n1 | awk '{print $3}')
printf "%-50s: %2u\n" ... $(expr $TO + 1)
