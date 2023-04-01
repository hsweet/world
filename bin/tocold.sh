#! /bin/bash

#usage  ./toc.sh folder-to-parse,  . for current folder
echo $1
cd $1

#read all .ly files, make a table of contents

grep  Updated *.ly | cut -d. -f1 >names
grep  Updated *.ly | cut -d: -f2 | cut -d" " -f4 >numbers
paste  numbers names | sort -n > toc
rm numbers
rm names
