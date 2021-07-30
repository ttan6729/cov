#!/bin/bash
#compress given list with one reference
ref=$1
list=$2
list_name="${list%.*}"
ref_name="${ref%.*}"
dir=$list_${ref_name}
mkdir ${dir}
cp $ref ./
ref_file="${ref##*/}"

while read file; do
	./hirgc -m file -r $ref_file -t $file
done <$2

