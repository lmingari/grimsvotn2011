#!/bin/bash
#SBATCH --job-name=FALL3D
#SBATCH --partition=express
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=24
#SBATCH --time=03:00:00

module purge
source /lustre/home/geo3bcn/lmingari/envs/set_env_gcc_11.2.0.sh

BIN="/lustre/home/geo3bcn/lmingari/fall3d/build/Fall3d.x"
PRJNAME="grimsvotn2011"
FALLTASK="all"
NX=8
NY=3
NZ=1
NENS=1

mpirun -n 24 ${BIN} ${FALLTASK} ${PRJNAME}.inp ${NX} ${NY} ${NZ} -nens ${NENS}
