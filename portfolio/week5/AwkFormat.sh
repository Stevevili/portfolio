#!/bin/bash 

echo "Google server IPs:"

awk '{
    
    print $1
    
}' input.txt 
