#!/bin/sh

ptpcam --set-property=0x5003 --val="2048x1024"
chdir /pi/timelapse
gphoto2 --capture-image-and-download --filename=/pi/timelapse/%06n.jpg --interval=$1 --frames=$2 --force-overwrite
