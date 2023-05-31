#!/bin/bash
input=./quotes.txt

sed '/^$/d' $input
echo "================================================"
awk '!x[$0]++' $input | sed '/^$/d'

exit 0
