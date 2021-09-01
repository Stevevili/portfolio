#!/bin/bash

echo "Enter Two Numbers between 0 and 9: "

$a = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

$b = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

read -a=$a

read -b=$b

echo "Enter Choice"

echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"

Read Choice

case $ch in
