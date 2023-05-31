#!/bin/bash

subse(){
	printf -v num %d "'$1"
	(( num += 1 ))
	printf -v newchar \\$(printf '%03o' "$num")
	echo -n "$newchar"
}


echo -n "Enter the string: "
read string

string=$(echo $string | rev)
echo $string

for (( i=0; i<${#string}; i++ )); do
  subse "${string:$i:1}"
done

echo

string=$(echo $string | rev)
size=${#string}
firstHalf=${string:0:$size/2}
secondHalf=${string:$size/2:$size}


firstHalf=$(echo $firstHalf | rev)

echo -n $firstHalf
echo $secondHalf

echo

