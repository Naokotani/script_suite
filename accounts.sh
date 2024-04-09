#!/bin/sh

# This simple shell script will automate some basic accounts realted
# tasks. The user will be able to add either a new user or a new group
# after being prompted for the name of the new user/group.

echo -e "\n\n** This script requires root priviledges **\n"

echo "Would you like to add  a user or group?"
echo "1: User"
echo "2: Group"
read -n 1 CHOICE

if [ $CHOICE -eq 1 ]
then
  UTLNAME="user"
elif [ $CHOICE -eq 2 ]
then
  UTLNAME="group"
else
  echo -e "\nBad Input. Enter 1 or 2"
  exit 1
fi
echo -e "\n\n---------------------------------\n"
echo "IDs can contain up to 128 bytes."
echo "Characters for user names and group names must not contain uppercase A through Z."
echo "ID must be one word with no spaces."
echo -e "\n---------------------------------\n\n"

echo -e "\nWhat is the name of the $UTLNAME?"

read NAME

case "$CHOICE" in
   1) useradd $NAME 
   ;;
   2) groupadd $NAME 
   ;;
esac
