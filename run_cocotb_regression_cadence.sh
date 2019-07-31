#! /bin/bash
git clone https://github.com/cocotb/cocotb
cd cocotb/tests
eval "$(/tape/ashmansk/anaconda3/bin/conda shell.bash hook)"
export PATH=/cad/INCISIVE152-lnx/tools/bin:$PATH
export ARCH=x86_64
export SIM=ius
export PYTHON_BIN=python3
make

