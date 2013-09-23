#!/bin/sh

FFMPEG=`which ffmpeg`

FRAMESPERSEC=10 # the more frames the faster it looks
EXT="jpg" # pay attention to lower- and uppercase
DEST="flickerbook.mp4"

$FFMPEG -f image2 -r $FRAMESPERSEC -pattern_type glob -i '*.'$EXT -c:v libx264 "$DEST"

exit 0