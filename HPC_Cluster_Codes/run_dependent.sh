#!/bin/bash

job=`qsub pbs.script.0`
for i in {1..9}
do
    job_next=`qsub -W depend=afterok:$job pbs.script.$i`
    job=$job_next
done
