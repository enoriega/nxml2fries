#!/bin/sh
# This script implements the pipelie of nxml2txt

for FILE in $@; do
  echo "Working on $FILE"
  NAME=${FILE%.*} # Remove the extension of the nxml file

  # Call nxml2txt
  nxml2txt $FILE $NAME.txt $NAME.so
  # Call nxml2fries
  python nxml2fries.py $NAME.txt $NAME.so
done
