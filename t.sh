#!/bin/bash
#compress given list with one reference
input=$1
while read line; do
	file="${line##*/}"
	echo $file >> tmp.txt
done <$1
mv tmp.txt $input

