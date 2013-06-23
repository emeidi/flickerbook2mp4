#!/bin/sh

EXT="JPG"

COUNTER=1000
ITERATIONS=10 # 11 pictures with 10 iterations with 5 frames per second result in a movie duration of 22 secs

echo "Deleting all existing links starting with 1*.$EXT ..."
rm -f 1*.$EXT # do not quote the string with the wildcard, otherwise bash won't glob it

echo "Starting the loop ..."
for i in $(seq 1 $ITERATIONS)
do
   echo "Iteration #$i"

   for FILE in 0*.$EXT
   do
      let COUNTER+=1
      ln -s "$FILE" "$COUNTER.$EXT"
   done

done

exit 0
