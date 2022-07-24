#!/bin/bash

cd Pictures/

img=$(sxiv *.jpg -o)
#echo $img
wal -i=$img -b=#000000 -n

#imgpath=/home/miku/Pictures/$img

cat ../Wallpaper.sh |tr 12345 $img >../wallpaper.sh
#echo "Your imgpath = $imgpath"
#cp -f ../Wallpaper.sh ../wallpaper.sh
#cat ../wallpaper.sh

source "../wallpaper.sh"

notify-send "wallpaper set as $img and appropriate terminal color applied"

rm ../wallpaper.sh
