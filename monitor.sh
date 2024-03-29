#!/bin/sh

# This basic utility simply directs you to the relavent monitoring
# utilities.

echo "What would you like to monitor?"
echo "1: System resouces"
echo "2: Network resouces"
read -n 1 UTILITY

case "$UTILITY" in
   1) htop 
   ;;
   2) bmon 
   ;;
   *) echo -e "\n Invalid command. Enter one of the commands on the list" 
   ;;
esac
