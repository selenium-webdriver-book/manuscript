#! /bin/sh
set -eu

cd $(dirname $0)/..

function num {
    ./bin/number-techniques.sh manuscript/ch$1*.adoc $2
}

# no techniques in chapter 1
num 02 1
num 03 6
num 04 10
num 05 14
num 06 17
num 07 20
num 08 23
num 09 25
num 10 27
num 11 30
num 12 33
num 13 38
num 14 42
num 15 45
num 16 48
num 17 51
num 18 52
