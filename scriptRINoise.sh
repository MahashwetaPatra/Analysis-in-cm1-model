#! /bin/ksh --login
#PBS -l procs=16 
#PBS -l walltime=09:00:00 
#PBS -d . 
#PBS -l vmem=64gb 
#PBS -N exp_ctl 
#PBS -o /N/slate/mpatra/cm1/log.out 
#PBS -e /N/slate/mpatra/cm1/log.err 
set -x cd /N/slate/mpatra/cm1/ 

rm -rf exp_172800_* 
for hhh in {001..200..100}
do
    val="0.000${hhh}" 
    cp -r exp_test exp_172800_1e-$hhh
    cd exp_172800_1e-$hhh
    sed -i 's/99999999/172800/' input_noise.txt
    sed -i 's/0.5/'${val}'/' input_noise.txt
    ./cm1.exe
    export PATH=$PATH:/N/u/ckieu/Karst/local/bin
    export GADDIR=/N/u/ckieu/Karst/local/grads
    module load grads
    grads -xlbc cm1out2text.gs
    cd ..
done
echo All done

