#!/bin/bash

FILE=./quotes.txt
FILESIZE=$(stat -c%s "$FILE")
echo "Size of $FILE = $FILESIZE bytes."


echo ""
sed -n '$=' quoted.txt


words=$(wc -w $FILE)
set -- $words
awk 'BEGIN {print "The number of words in the file '$2'  is '$1' "}'


awk -v j=1 '{print j++,NF}' $FILE


grep -wo '[[:alnum:]]\+' $FILE | sort | uniq  -d -c


