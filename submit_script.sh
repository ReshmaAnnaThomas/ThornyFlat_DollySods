#!/bin/sh

#Copy/paste this job script into a text file and submit with the command:

#sbatch thefilename

#SBATCH --nodes=1  # number of nodes
#SBATCH --ntasks-per-node=10    
#SBATCH --partition=comm_gpu_inter    #Submitting to a gpu node
#SBATCH --gres=gpu:1   #number of GPUs you want
#SBATCH --gpu_cmode=shared
#SBATCH --job-name=<your_jobname>
#SBATCH --mail-user=<your_email_id>
#SBATCH --mail-type BEGIN,END,FAIL


singularity exec --nv /shared/containers/radio_transients/radio_transients.sif <<your code here>>
