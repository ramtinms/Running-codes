#!/bin/bash

#echo $1 
for ((i=$1; i<$2; i++))
 {
    echo "$i" >> output.txt
    #echo "$i" >> $3
 }

exit 0;
