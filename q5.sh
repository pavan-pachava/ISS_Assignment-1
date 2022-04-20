#!/bin/bash

read word
#a.
rev=$(echo $word | rev)
echo $rev


#b.
rev_inc=$(echo "$rev" | tr "0-9a-zA-Z" "1-9a-zA-Z")
echo $rev_inc


#c.
count=${#word}
let half=$count/2
first=$(echo ${word:0:half})
echo -n $first | rev
let second=$count-$half
echo ${word:half:second}
