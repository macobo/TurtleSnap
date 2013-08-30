#!/bin/bash

FILE_PREFIX=$1???.ps
OUT_FILE_NAME=$2
FRAME_DELAY=$3
DPI=90

CROPSIZE=`convert -density $DPI $FILE_PREFIX -layers flatten -trim -format '%wx%h%X%Y' info:`

convert -delay 20 \
        -dispose previous \
        -density $DPI \
        -quality 100 \
        +antialias \
        $FILE_PREFIX \
        -crop $CROPSIZE! \
        +repage \
        $OUT_FILE_NAME

rm $FILE_PREFIX*