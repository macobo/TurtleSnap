#!/bin/sh

FILE_PREFIX=$1
OUT_FILE_NAME=$2
FRAME_DELAY=$3

CROPSIZE=`convert $FILE_PREFIX???.ps  -layers flatten -trim -format '%wx%h%X%Y' info:`
convert -delay 20 -dispose previous $FILE_PREFIX???.ps \
        -crop $CROPSIZE! +repage $OUT_FILE_NAME

rm $FILE_PREFIX*