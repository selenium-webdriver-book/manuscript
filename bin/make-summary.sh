#! /bin/bash
set -eu

cd $(dirname $0)/../manuscript

function part {
  section part $1 Part
}

function ch {
  section ch $1 Chapter
}

function appendix {
  section ap $1 Appendix
}

function section {
  PREFIX=$1
  ID=$2
  NAME=$3
  FILE=$(ls | grep $PREFIX$ID)
  CHAPTER_TITLE=$(grep '^= ' $FILE | cut -c 3-)
  TITLE="$NAME $(echo $ID | sed 's/^0*//'): $CHAPTER_TITLE"
  echo "link:manuscript/$FILE[$TITLE]"
}

cat <<EOF

* $(part 1)
* $(ch 01)
* $(ch 02)
* $(ch 03)
* $(ch 04)
* $(ch 05)
* $(ch 06)
* $(part 2)
* $(ch 07)
* $(ch 08)
* $(ch 09)
* $(ch 10)
* $(ch 11)
* $(ch 12)
* $(part 3)
* $(ch 13)
* $(ch 14)
* $(ch 15)
* $(ch 16)
* $(ch 17)
* $(ch 18)
* $(appendix A)
EOF
