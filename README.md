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

# Step-by-step procedure to run Heimdall+Fetch pipeline using `your` 

1. `your_writer.py` can convert files from one format to another. This is optional. `your_rfimask.py` will give a mask of bad channels which you can use in the subsequent steps.
2. `your_heimdall.py` runs heimdall on the input file
3. `candcsvmaker.py` converts the heimdall .cand files to a csv file
4. `your_candmaker.py` will take this .csv file as input and convert them to h5 files
5. `predict.py` in `FETCH` will run on the h5 files and creates a results.csv file
6. `your_h5plotter.py` can either plot all the h5s files (freq vs time, DM vs time, time profile etc)  or only the positives in files
