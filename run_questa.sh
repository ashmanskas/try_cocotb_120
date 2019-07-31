#! /bin/bash
eval "$(/tape/ashmansk/anaconda3/bin/conda shell.bash hook)"
printenv | grep -i python
PATH=/cad/mentor/questa-10.7/questasim/bin:$PATH \
COCOTB_REDUCED_LOG_FMT=1 \
COCOTB_ANSI_OUTPUT=0 \
ARCH=x86_64 \
SIM=questa \
PYTHON_BIN=python3 \
make
