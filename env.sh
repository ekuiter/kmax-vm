#!/bin/bash
export KMAX_ROOT=/vagrant/kmax
export PYCUDD_ROOT=/vagrant/pycudd2.0.2
export KMAX_SCRATCH=/vagrant/kmax_scratch
export KMAX_DATA=/vagrant/kmax_data
export PATH=$PATH:${KMAX_ROOT}/kconfig:${KMAX_ROOT}/kbuild:$KMAX_ROOT/analysis
export PYTHONPATH=$PYTHONPATH:${PYCUDD_ROOT}/pycudd:${KMAX_ROOT}/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${PYCUDD_ROOT}/cudd-2.4.2/lib
