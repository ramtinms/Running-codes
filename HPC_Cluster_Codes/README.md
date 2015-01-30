

# Step 1 
Creating your pbs files for running

# Step 2
running your code in parallel

# Step 3
running your code dependently.

# run_parallel_without_qsub.sh 
This one needs a codefile and then an 'args' file as input, 'args' file shoud have two args for each run of code
example ```sh run_parallel_without_qsub.sh code.sh args```

It will print the failed rows of jobs (starting from 1) 

Reference : https://wikis.nyu.edu/display/NYUHPC/Tutorial+-+Submitting+a+job+using+qsub
