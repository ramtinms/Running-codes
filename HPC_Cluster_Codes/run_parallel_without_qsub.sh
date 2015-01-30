#!/bin/bash

FAIL=0

echo "starting"

for i in [1..4]
do
bash code.$i.sh &
done


for job in `jobs -p`
do
echo $job
    wait $job || let "FAIL+=1"
done

echo $FAIL

if [ "$FAIL" == "0" ];
then
echo "YAY!"
else
echo "FAIL! ($FAIL)"
fi
