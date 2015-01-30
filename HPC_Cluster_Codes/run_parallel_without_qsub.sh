#!/bin/bash

echo "starting"

code_file="$1"
args_file="$2"
while read -r line
do
    myargs=$line
    arrIN=(${myargs//;/ })
    #echo ${arrIN[0]}
    #echo ${arrIN[1]}
    bash $code_file ${arrIN[0]} ${arrIN[1]} ${arrIN[2]} &
done < "$args_file"


counter=1
#failed_jobids
Failed=""
seperator=" "
for job in `jobs -p`
do
echo $job
    wait $job || Failed=$Failed$seperator$counter$seperator
    #;echo "Part "+counter+" Failed."
    counter=$((counter+1))
done


if [ "$Failed" == "" ];
then
echo "YAY!"
else
echo "FAIL! in these rows ($Failed)"
fi
