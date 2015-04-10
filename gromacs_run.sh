#!/bin/bash 
module load fftw/3.3.4-gromacs
module load atlas 
module load lapack
module load gromacs
gmx mdrun -s md.tpr
mkdir -p OutFilesFromGromacs
cp *.log OutFilesFromGromacs/.
cp *.tpr OutFilesFromGromacs/.
cp *.xsc OutFilesFromGromacs/.
tar czf OutFilesFromGromacs.tar.gz OutFilesFromGromacs

