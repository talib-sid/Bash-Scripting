#!/bin/bash

N=0
arr=()
tempArr=()
input=./array.csv

while IFS=  read -r col1
do
    tempArr+=("$col1")
done < $input

arr=(${tempArr//,/ })

size=${#arr[*]}

for ((i=0; i<$size; i++))
do

    for ((j=0; j<$size-i-1; j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Sorted array :"
echo ${arr[*]}
