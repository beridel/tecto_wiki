#!/bin/bash

#SBATCH -psched_mit_erl
#SBATCH --exclusive
#SBATCH --mem=MaxMemPerMode
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=mouchonc@mit.edu
#SBATCH --array=1-37%4

VAR1=$(head -n $SLURM_ARRAY_TASK_ID sta_list.txt | tail -n 1)

bash code.sh $VAR1
