#!/bin/bash

DIRS="src"
EXTS="h cc hpp cpp c"

find . -name "*~" -exec rm {} \;

for dir in $DIRS
do
	for ext in $EXTS
	do
		find $dir -name "*.$ext" -exec clang-format -i {} \;
	done
done
