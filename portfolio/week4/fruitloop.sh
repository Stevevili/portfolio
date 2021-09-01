#! /bin/bash


fruit=("Apple" "Mango" "Strawberry" "Orange" "Banana")


len=${#fruit[@]}


for ((i = 0; i <= (($len-1)); i++))


do


    echo "FRUIT: ${fruit[$i]}"


done
