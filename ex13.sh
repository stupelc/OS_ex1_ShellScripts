#!/bin/bash
#chagit stupel 209089960

path="$1"
name=$2

cd "$path"							
for i in $(ls|sort); do
  if [[ ("$i" == "$name") && (-f $i) ]] ; then	
		cat $i;
	else
		if [ -d $i ]; then
			cd $i
			for j in $(ls|sort); do
				if [[ ("$j" == "$name") && (-f $j) ]] ; then
					cat $j;
				fi
			done
			cd ..
		fi
	fi 							
done