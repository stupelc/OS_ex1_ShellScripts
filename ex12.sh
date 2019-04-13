#!/bin/bash
#chagit stupel 209089960

path=$1
cd "$path"

for file in $(ls|sort -V); do
	if [[ (-f $file) && ( ${file: -4} == ".txt") ]]; then
		echo $file is a file;
	fi
done;


for file in $(ls|sort -V); do
	if [ -d $file ]; then
		echo $file is a directory;fi
done;