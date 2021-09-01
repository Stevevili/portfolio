#/bin/bash


#This function prints a given error

printError()

{


  echo -e "\033[31mERROR:\033[0m $1"


}


#This function will get a value between the 2nd and 3rd arguments

getNumber()

{

  read -p "$1:"

  while (( $REPLY <$1 || $REPLY> $100)); do

    printError "Input must be between $1 and $100" 

    read -p "$:"

  done


}


getNumber "please type a number between 1 and 100 if you guess the correct number you will be informed" 1 100


echo "Correct!"
