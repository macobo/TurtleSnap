#!/bin/sh

FILE_PREFIX=$1
OUT_FILE_NAME=$2
FRAME_DELAY=$3
TEMP_FILE=_animation.gif

convert -delay $FRAME_DELAY -dispose previous $FILE_PREFIX???.ps $TEMP_FILE
CROPSIZE=`convert $TEMP_FILE -layers merge -trim -format '%wx%h%X%Y' info:`
convert $TEMP_FILE -crop $CROPSIZE! $OUT_FILE_NAME

rm $TEMP_FILE
rm $FILE_PREFIX*