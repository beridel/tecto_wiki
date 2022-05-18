#!/bin/bash 
#SBATCH -n 4 #Request 4 tasks (cores)
#SBATCH -N 1 #Request 1 node
#SBATCH -t 0-00:30 #Request runtime of 30 minutes
#SBATCH -psched_mit_erl #Run on sched_mit_erl partition
#SBATCH --mem=MaxMemPerMode #Request max memory per Mode
#SBATCH -o output_%j.txt #redirect output to output_JOBID.txt
#SBATCH -e error_%j.txt #redirect errors to error_JOBID.txt
#SBATCH --mail-type=BEGIN,END, FAIL #Send email when job starts, ends and fail
#SBATCH --mail-user=mouchonc@mit.edu #email recipient

echo "Hello World"
