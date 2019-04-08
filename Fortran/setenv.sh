#!/bin/bash
echo 'source /opt/intel/bin/compilervars.sh intel64'
source /opt/intel/bin/compilervars.sh intel64
source /opt/intel/compilers_and_libraries_2019.3.199/linux/bin/compilervars.sh intel64
echo 'ulimit -s unlimited'
# export OMP_NUM_THREADS = 30
echo 'NUM THREADS  ' $OMP_NUM_THREADS
ulimit -s unlimited
make clean
rm Main
make hpcrelease
./Main

