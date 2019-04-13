#!/bin/bash
#chagit stupel 209089960

path=$1
word=$2

grep -n -w $word $path | sed 's/:/ /'