#! /bin/bash
#SBATCH -J REPLACE_IT_WITH_YOUR_JOB_NAME
#SBATCH -p SP-V100
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --exclusive
#SBATCH --output=%j.out
#SBATCH --error=%j.err

export OMP_NUM_THREADS=1
export MKL_THREADING_LAYER=GNU
export PATH=/Share/THUDATA/Softwares/mpich3.3/bin:$PATH
export LD_LIBRARY_PATH=/Share/THUDATA/Softwares/mpich3.3/lib:$LD_LIBRARY_PATH

source activate CRYOSIEVE_ENV
srun -o output_mpi.txt cryosieve --reconstruct_software "mpirun -n 5 relion_reconstruct_mpi" --postprocess_software relion_postprocess --i diver2019_pmTRPM8_calcium_Krios_6Feb18_finalParticleStack_EMPIAR_composite.star --o output/ --mask mask.mrc --angpix 1.059 --num_iters 10 --frequency_start 40 --frequency_end 3 --retention_ratio 0.8 --sym C4 --num_gpus 4
grep "+ FINAL RESOLUTION:" output/_postprocess*.txt
