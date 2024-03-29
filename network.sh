#!/bin/sh

# This script provides utilties to diagnose network problems.
# This script requires bmon and tracerote dependendies 

echo "What problem would you like to diagnose?"
echo "1) Check connection to google.com."
echo "2) Display network devices."
echo "3) Display IP address."
echo "4) Display network traffic. (q to quit)"
echo -e "5) Trace route to google.com.\n"

read -n 1 UTILITY

echo -e "\n\n"

case "$UTILITY" in
   1)
     echo -e "** Press ctrl + c to end. **\n\n"
     ping google.com
   ;;
   2) ip link
   ;;
   3) ip addr
   ;;
   4) bmon
   ;;
   5) traceroute google.com
   ;;
   *) echo -e "\n Invalid command. Enter one of the commands on the list" 
   ;;
esac
