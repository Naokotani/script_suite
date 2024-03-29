#!/bin/sh

# This script requries rclone to be installed on your system and configured.
# to work with your favorite cloud provider. Instructions can be found at
# https://rclone.org/
# 
# Replace "proton" with the profile you set up. and repeat the command for 
# your different folders you owuld like to backup.

if ! command -v rclone &> /dev/null
then
    echo "rclone could not be found"
    exit 1
fi

rclone copy ~/Pictures proton:Pictures
