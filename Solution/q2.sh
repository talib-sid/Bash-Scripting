#!/bin/bash
input="quoted.txt"

while IFS= read -r line
do
  if [ "${line##*~}" != ' ' ]
  then
  echo "${line##*~} once said, ${line%~*}" >> ./speech.txt
  fi
done < $input
