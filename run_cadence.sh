#! /bin/bash
eval "$(/tape/ashmansk/anaconda3/bin/conda shell.bash hook)"
PATH=/cad/INCISIVE152-lnx/tools/bin:$PATH \
COCOTB_REDUCED_LOG_FMT=1 \
COCOTB_ANSI_OUTPUT=0 \
ARCH=x86_64 \
SIM=ius \
LM_LICENSE_FILE=1711@head \
PYTHON_BIN=python3 \
make
