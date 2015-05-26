#!/bin/bash

echo "Resize script for $1 started"

inputFile="${1##*/}"
FILE_NAME="${inputFile%.*}"
FOLDER_NAME="$FILE_NAME-icons-iphone"

mkdir $FOLDER_NAME
cp $1 $FOLDER_NAME
cd $FOLDER_NAME

echo "IPhone version"

convert $1 -resize 512x512 "icon_512x512.png"
convert $1 -resize 180x180 "icon_60x60@3x.png"
convert $1 -resize 120x120 "icon_60x60@2x.png"
convert $1 -resize 60.60 "icon_60x60.png"
convert $1 -resize 120x120 "icon_40x40@3x.png"
convert $1 -resize 80x80 "icon_40x40@2x.png"
convert $1 -resize 40x40 "icon_40x40.png"
convert $1 -resize 87x87 "icon_29x29@3x.png"
convert $1 -resize 58x58 "icon_29x29@2x.png"
convert $1 -resize 29x29 "icon_29x29.png"

echo "IPad version"
cd ..
FOLDER_NAME="$FILE_NAME-icons-ipad"

mkdir $FOLDER_NAME
cp $1 $FOLDER_NAME
cd $FOLDER_NAME

convert $1 -resize 29x29 "icon_29x29.png"
convert $1 -resize 58x58 "icon_29x29@2x.png"
convert $1 -resize 40x40 "icon_40x40.png"
convert $1 -resize 80x80 "icon_40x40@2x.png"
convert $1 -resize 76x76 "icon_76x76.png"
convert $1 -resize 152x152 "icon_76x76@2x.png"

echo "IWatch version"
cd ..
FOLDER_NAME="$FILE_NAME-icons-iwatch"

mkdir $FOLDER_NAME
cp $1 $FOLDER_NAME
cd $FOLDER_NAME

convert $1 -resize 48x48 "icon_24x24@2x.png"
convert $1 -resize 55x55 "icon_27_5x27_5@2x.png"
convert $1 -resize 58x58 "icon_29x29@2x.png"
convert $1 -resize 87x87 "icon_29x29@3x.png"
convert $1 -resize 80x80 "icon_40x40@2x.png"
convert $1 -resize 88x88 "icon_44x44.png"

echo "Resisizg finished"
open .
