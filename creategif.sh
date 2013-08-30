#!/bin/sh

FILE_PREFIX=$1
OUT_FILE_NAME=$2
FRAME_DELAY=$3
TEMP_FILE="_animation.gif"

echo $TEMP_FILE
convert -delay $FRAME_DELAY -dispose previous "$FILE_PREFIX???.ps" $TEMP_FILE
echo $TEMP_FILE
CROPSIZE=`convert $TEMP_FILE -layers merge -trim -format '%wx%h%X%Y' info:`
echo $TEMP_FILE
convert $TEMP_FILE -crop $CROPSIZE! $OUT_FILE_NAME
echo $TEMP_FILE

rm $TEMP_FILE
rm $FILE_PREFIX*