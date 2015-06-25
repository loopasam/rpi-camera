#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H%M")

# Take the picture
fswebcam -r 1280x720 -S 15 --font "luxisr:32" --banner-colour '#4a5bff00' --line-colour '#ff5bff00' --save /home/pi/rpi-camera/images/$DATE.jpg

# Upload the image
bash /home/pi/rpi-camera/dropbox_uploader.sh upload /home/pi/rpi-camera/images/$DATE.jpg /

# Delete all the images
rm -r /home/pi/rpi-camera/images/*
