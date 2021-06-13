#!/bin/bash -x
read -p "enter first number" a
read -p "enter second number" b
read -p "enter third number " c
mod=$(($a%$b))
compute=$(($mod+$c))
echo "$compute"
