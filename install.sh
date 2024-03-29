#!/bin/sh

# This script will install the depedencies for all scripts.
# Please review all programs before installation.
#
# The script will also set up the suites cron jobs.


echo "Do you want auto backups? (y/n)"
read -n 1 CHOICE


case "$CHOICE" in
   y|Y)
      apt-get install rclone
      echo -e "\nYou must configure rclone for backups to work"
   ;;
esac

./cron.sh

echo -e "** This follow installations require root privildges **\n\n"

apt-get install bmon traceroute
