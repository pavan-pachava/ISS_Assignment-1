#!/bin/bash

grep -v '^[[:space:]]*$' quotes.txt
echo
echo
echo
echo
echo
touch abc.txt
awk '!seen[$0]++' $1 > abc.txt
cat abc.txt
rm abc.txt
