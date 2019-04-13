#!/bin/bash
#chagit stupel 209089960

name=$1 									
path=$2 									
sum=0
param=0

cat $path | grep -w "$name"
param=$(cat $path | grep -w "$name" | awk '{print $3}')

for i in $param; do
	sum=$[$sum + $i]
done

echo Total balance: $sum 