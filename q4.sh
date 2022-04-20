#!/bin/bash

read string
arr=($(echo $string | tr "," "\n"))
n=${#arr[*]};
for (( i = 0 ; i < $n ; i++ )); do
    for (( j = $i ; j < $n; j++ )); do
        if [ ${arr[$i]} -gt ${arr[$j]}  ]; then
            t=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$t
        fi
    done
done

echo ${arr[@]}

