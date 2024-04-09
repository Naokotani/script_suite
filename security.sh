#!/bin/sh

# This basic this sciprt is for automatic various security realted tasks.
# If the user selects 1, they will directed to enable, disable, or see the 
# status of their ufw firewall. They can also allow or disallow different 
# ports. 
# 
# Selecting 2 will prompt the user to enter a directory so they can perform
# a vulnerability scan on a node project of their choosing.
#
# This script has a node dependency

echo "What would you like to update your firewall or scan node application?"
echo "1: Update firewall rules"
echo "2: Scan a node application"
read -n 1 UTILITY

scan() {
  echo -e "\nPlease enter the full path to the node application root directory."
  read -e -p "Directory: " directory
  cd $directory
  npm audit
}

firewall() {
  echo "What would you like to do with your  firewall"
  echo "1: Show status"
  echo "2: enable firewall"
  echo "3: disable firewall"
  echo "4: Allow port"
  echo "5: Disallow port"
  read -n 1 CHOICE

  if [ "$CHOICE" = "4" ] || [ "$CHOICE" = "5" ]
  then
    echo -e "\nEnter the port you would like to update"
    read port
  fi

  case "$CHOICE" in 
    1) ufw status ;;
    2) ufw enable ;;
    3) ufw disable ;;
    4) 
      if [[ $port =~ [[:digit:]] ]]
      then
        ufw allow "$port"
      fi
      ;;
    5) 
      if [[ $port =~ [[:digit:]] ]]
      then
        ufw deny "$port"
      fi
      ;;
    *) echo -e "\nInvalid command"
  esac
}

case "$UTILITY" in
  1) firewall ;;
  2) scan ;;
  *) echo -e "\n Invalid command. Enter one of the commands on the list" 
    ;;
esac

