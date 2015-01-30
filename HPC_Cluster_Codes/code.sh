#!/bin/bash

#echo $1 
for ((i=$1; i<$2; i++))
 {
    echo "$i" >> output.txt
 }

exit 0;
