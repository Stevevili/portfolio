#!/bin/bash

  read -p "username : " user_var

  read -sp "Type secret password : " password_var

  echo $password_var | sha256sum > secret.txt

if [ "$(echo $password_var | sha256sum)" = "$(cat secret.txt)" ]; then
  echo "Access Granted" 

else
  echo "Access Denied you have 2 more attepmpts until explosive detonation"
  exit 1
fi


  echo 1.Create a folder
  echo 2.Copy a folder
  echo 3.Set a password

  read -p "Select option from list: 1, 2, or 3" user_input

if [ "$user_input" = 1 ]; then

./foldermaker.sh

fi

if [ "$user_input" = 2 ]; then

  read -p "type the name of the folder you would like to copy: " foldername
  if [ -d "$foldername" ]; then
    read -p "type the name of the destination folder. " newFolderName  
    cp -r "$foldername" "$newFolderName"
  else
    echo "I couldn't find that folder"

  fi

fi

if [ "$user_input" = 3 ]; then

    
    echo "please include the numbers in password it is weak password"

    
    echo "password length should be greater than or equal 8 hence weak password"
    
fi


exit 0






 