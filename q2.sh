#!/bin/bash
touch temp_file.txt
cat quotes.txt > temp_file.txt
sed -i '/^$/d' temp_file.txt
touch speech.txt
temp=1
while IFS= read -r line; do
    quote=${line%~*}
    author=${line#*~}
    if [ $temp -eq 1 ]
    then
        print=$author' once said, " '$quote'"'
        echo $print > speech.txt
        let temp+=1
        continue
    fi
    print=$author' once said, " '$quote'"'
    echo $print >> speech.txt
done < temp_file.txt
rm temp_file.txt
