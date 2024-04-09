#!/bin/sh

# This script will set up some basic cron tasks for your system using scripts in the suite.
# Running the script once is all that is needed.

crontab -l > mycron
# Backup sunday at midnight

if command -v rclone &> /dev/null
then
  echo "0 0 * * 0 "${PWD}/backup.sh"" >> mycron
fi

# Auto remove old tmp files
echo "0 0 * * 0  find /tmp -regextype posix-egrep -regex '/tmp/[0-9]{8}-[0-9]{6}-.*-file-.*' -type f -mmin +60 -delete
" >> mycron

#install new cron file
crontab mycron
rm mycron

