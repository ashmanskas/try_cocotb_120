#! /bin/bash
eval "$(/tape/ashmansk/anaconda3/bin/conda shell.bash hook)"
python3 -m venv .
source ./bin/activate
pip3 install cocotb

