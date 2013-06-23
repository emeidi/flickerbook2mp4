#!/bin/sh

FFMPEG=`which ffmpeg`

$FFMPEG -f image2 -r 5 -pattern_type glob -i '*.jpg' -c:v libx264 stephanie-bell.mp4

exit 0
