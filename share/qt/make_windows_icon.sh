#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/gash.png
ICON_DST=../../src/qt/res/icons/gash.ico
convert ${ICON_SRC} -resize 16x16 gash-16.png
convert ${ICON_SRC} -resize 32x32 gash-32.png
convert ${ICON_SRC} -resize 48x48 gash-48.png
convert gash-16.png gash-32.png gash-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/gash_testnet.png
ICON_DST=../../src/qt/res/icons/gash_testnet.ico
convert ${ICON_SRC} -resize 16x16 gash-16.png
convert ${ICON_SRC} -resize 32x32 gash-32.png
convert ${ICON_SRC} -resize 48x48 gash-48.png
convert gash-16.png gash-32.png gash-48.png ${ICON_DST}
rm gash-16.png gash-32.png gash-48.png
#regtest
ICON_SRC=../../src/qt/res/icons/gash_regtest.png
ICON_DST=../../src/qt/res/icons/gash_regtest.ico
convert ${ICON_SRC} -resize 16x16 gash-16.png
convert ${ICON_SRC} -resize 32x32 gash-32.png
convert ${ICON_SRC} -resize 48x48 gash-48.png
convert gash-16.png gash-32.png gash-48.png ${ICON_DST}
rm gash-16.png gash-32.png gash-48.png
#unittest
ICON_SRC=../../src/qt/res/icons/gash_unittest.png
ICON_DST=../../src/qt/res/icons/gash_unittest.ico
convert ${ICON_SRC} -resize 16x16 gash-16.png
convert ${ICON_SRC} -resize 32x32 gash-32.png
convert ${ICON_SRC} -resize 48x48 gash-48.png
convert gash-16.png gash-32.png gash-48.png ${ICON_DST}
rm gash-16.png gash-32.png gash-48.png