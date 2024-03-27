# Steps to run heimdall+fetch of Thorny Flats or Dolly Sods.

Copy and paste the `submit_script.sh`, edit the lines and submit with `sbatch submit_script.sh`. May you find lots of FRBs! 

Submit_script.sh will submit a slurm job to a GPU node. 

There are several singularity containers available on Thorny Flats and Dolly Sods. On Dolly Sods you also have `/shared/containers/tpp/tpp_20231212.sif` container. 

Both these containers `your` package and `Fetch`.

To run `your` or `Fetch` on the command line:

On TF, do `qsub -I -q comm_gpu_inter -l nodes=1:ppn=1:gpus=3` (change the no: of gPUs and node numbers as per your wish):

On DS, `ssh <somenode>`,:

Then run: `singualrity shell --nv <path_to_your_container>`

Now you are in the shell. Run your commands now!
