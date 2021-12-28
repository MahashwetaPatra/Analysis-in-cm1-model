#!/bin/bash -l
#SBATCH -N 20
#SBATCH -n 480
#SBATCH -t 24:00:00
#SBATCH -J EXP
ulimit -s unlimited

run -N 10 -n 480 ./cm1_rf.exe
