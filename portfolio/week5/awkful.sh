#!/bin/bash

awk 'BEGIN {
    -F=";"
    print "This happens at the start"
}
{
    //"this happens here"   
    printf (| %-20s | %s |\n, $1, $6)
}
END {
   print("The End"); 
}'/etc/passwd
