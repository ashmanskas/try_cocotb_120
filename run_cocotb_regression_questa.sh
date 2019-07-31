#! /bin/bash
git clone https://github.com/cocotb/cocotb
cd cocotb/tests
eval "$(/tape/ashmansk/anaconda3/bin/conda shell.bash hook)"
export PATH=/cad/mentor/questa-10.7/questasim/bin:$PATH
export ARCH=x86_64
export SIM=questa
export LM_LICENSE_FILE=1717@jicama.seas.upenn.edu
export PYTHON_BIN=python3
make

