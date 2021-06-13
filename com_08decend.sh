#!/bin/bash -x
read -p "Enter the first value: " a
read -p "Enter the second value: " b
read -p "Enter the third value: " c
cal1=$(($a+$b*$c))
cal2=$(($a*$b+$c))
cal3=$(($c+($a/$b)))
mod=$(($a%$b))
cal4=$(($mod+$c))
declare -A compute
compute["Res1"]=$cal1
compute+=( ["Res2"]=$cal2 ["Res3"]=$cal3 ["Res4"]=$mod ["Res5"]=$cal4 )
for Res in ${!compute[@]};do
        echo ${Res} ${compute[${Res}]}
done

arr[0]=$((compute["Res1"]))
arr[1]=$((compute["Res2"]))
arr[2]=$((compute["Res3"]))
arr[3]=$((compute["Res4"]))
arr[4]=$((compute["Res5"]))
echo "${arr[@]}"

desc=$(printf '%s\n' "${arr[@]}" | sort -r)
