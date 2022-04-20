#!/bin/bash


#a.
mysize=$(find "$1" -printf "%s")
echo "The size of $1 is $mysize bytes."


#b.
no_lines=$(wc -l < $1)
echo "The number of lines in $1 is $no_lines."


#c.
no_words=$(wc -w < $1)
echo "The number of words in $1 is $no_words."


#d.
touch xyz.txt
let count=1
while IFS= read -r line; do
    echo $line > xyz.txt
    no_words_line=$(wc -w < xyz.txt)
    echo "$count : $no_words_line"
    let count++
done < $1
rm xyz.txt


#e.
egrep -o "\b[[:alpha:]]+\b" $1 | \

awk '{ count[$0]++ }
END {
for(ind in count)
{
    if ( count[ind] != 1 )
    {
        printf("%-14s:%d\n",ind,count[ind]); }
    }
}'
