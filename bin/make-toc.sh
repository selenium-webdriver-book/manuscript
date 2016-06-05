#! /bin/bash
set -eu

cd $(dirname $0)/../manuscript

function ch {
  CHAPTER_NO=$1
  FILE=$(ls | grep ch$CHAPTER_NO)
  TITLE=$(grep '^= ' $FILE | cut -c 2-)
  echo "* Chapter $(echo $CHAPTER_NO | sed 's/^0*//'): $TITLE"

  grep '^== ' $FILE | cut -c 3- | sed 's/\(.*\)/    - \1/'
}

TOC=TOC.adoc

> $TOC

cat <<EOF
*Preface*

a. What this book covers
b. Who it is for
c. Acknowledgments
d. About the cover illustration

*Part 1 – Fundamentals*

In this section we will introduce you to Selenium WebDriver. We’ll teach common techniques that are useful in writing tests, such as locating, interacting and verifying  elements. We’ll also show you how to make your code more maintainable using Page Objects and how to deal with errors* You’ll be able to write code for many common web pages by the end of it.

$(ch 01)
$(ch 02)
$(ch 03)
$(ch 04)
$(ch 05)
$(ch 06)

*Part 2 – WebDriver APIs In Depth*

In this section we will dive into how to use the WebDriver APIs for automating more complex page elements. We’ll also look at automating JavaScript web applications. Finally, we’ll introduce you to each of the main drivers, such as the Firefox Driver, as well as mobile drivers for iOS and Android.

$(ch 07)
$(ch 08)
$(ch 09)
$(ch 10)
$(ch 11)
$(ch 12)

*Part 3 - Page Based Automation Framework*

We are going to use the technique we learnt from previous part of the book to write a wrapper framework around WebDriver. This framework is written by experienced enterprise developers based upon lessons learned on the development of many web automation projects. It encapsulates much of the complexity of WebDriver and exposes a clean API to boost productivity and make code easy to understand.

The part of the book will explain the principles behind the evolution of a framework, and use it to show you how you can reduce the complexity of your code by developing an in-house framework.

$(ch 13)
$(ch 14)
$(ch 15)
$(ch 16)
$(ch 17)
$(ch 18)
EOF
