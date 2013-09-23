#!/bin/sh

EXT="jpg" # pay attention to lower- and uppercase

NUMSOURCEFILES=`find . -name "0*.$EXT" | wc -l`

if [ $NUMSOURCEFILES -lt 1 ]
then
	echo "No files matching '0*.$EXT' found in current working dir. Check file upper- and lowercase extension. Abort."
	exit 1
else
	echo "$NUMSOURCEFILES files matching '0*.$EXT' found in current working dir."
	echo "Continuing."
	echo ""
fi

COUNTER=1000
ITERATIONS=10 # 11 pictures with 10 iterations with 5 frames per second result in a movie duration of 22 secs

echo "Deleting all existing links starting with 1*.$EXT ..."
rm -f 1*.$EXT # do not quote the string with the wildcard, otherwise bash won't glob it
echo "Done."
echo ""

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

echo "Done."
echo ""

exit 0
