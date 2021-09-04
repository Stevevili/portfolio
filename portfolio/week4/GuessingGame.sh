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

  while (( $REPLY <$2 || $REPLY> $3)); do

    printError "Input must be between $2 and $3" 

    read -p "$:"

  done


}

echo "Let the guessing game begin, my number is more than 0 but less less than 100"

getNumber "To low try again" 1 50

getNumber "To high try again" 51 100

getNumber "Correct, you got it" 42

echo "Well done"
