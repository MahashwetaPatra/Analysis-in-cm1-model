#! /bin/ksh --login
#PBS -l procs=16 
#PBS -l walltime=12:00:00 
#PBS -d . 
#PBS -l vmem=64gb 
#PBS -N exp_ctl 
#PBS -o /N/slate/mpatra/cm1/log.out 
#PBS-e /N/slate/mpatra/cm1/log.err 
set -x cd /N/slate/mpatra/cm1/ 
rm -rf exp_params*
for hhh in {001..050..001}
do
    r2=$(( $RANDOM % 500 )); echo $r2
    r="0.000${r2}"
    num=0.001
    val=$((num+r))
    cp -r exp_param exp_params$hhh
    cd exp_params$hhh
    rm -rf cm1out_*
    rm -rf out_*
    sed -i 's/0.2/'${val}'/' namelist.input
    ./cm1.exe
    export PATH=$PATH:/N/u/ckieu/Karst/local/bin
    export GADDIR=/N/u/ckieu/Karst/local/grads
    module load grads
    grads -xlbc cm1out2text.gs
    cd ..
done
echo All done

