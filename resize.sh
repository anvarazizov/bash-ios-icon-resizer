#!/bin/bash

echo "Resize script for $1 started"

FOLDER_NAME = $1-icons

mkdir FOLDER_NAME
cp $1 FOLDER_NAME
cd FOLDER_NAME

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

echo "Resisizg finished"
open .
