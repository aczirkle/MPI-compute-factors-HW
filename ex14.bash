#!/bin/bash
# Lines beginning with # are comments
# Only lines beginning #PBS are processed by qsub
#PBS -N homework6Nodes
#PBS -l walltime=00:20:00
#PBS -l mem=1GB
#PBS -l nodes=6:ppn=1
#PBS -S /bin/bash
#PBS -m aeb

cd $PBS_O_WORKDIR
/usr/bin/time -v mpiexec -n $PBS_NP ./homework6 numbers_10000.txt
/usr/bin/time -v mpiexec -n $PBS_NP ./homework6 numbers_10000.txt
/usr/bin/time -v mipexec -n $PBS_NP ./homework6 numbers_10000.txt
#end of script
