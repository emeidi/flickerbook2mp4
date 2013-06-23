#!/bin/sh

COUNTER=1000
ITERATIONS=10

echo "Deleting all existing links starting with 1*.jpg ..."
rm -f 1*.jpg

echo "Starting the loop ..."
for i in $(seq 1 $ITERATIONS)
do
   echo "Iteration #$i"

   for FILE in 0*.JPG
   do
      let COUNTER+=1
      ln -s "$FILE" "$COUNTER.jpg"
   done

done

exit 0
