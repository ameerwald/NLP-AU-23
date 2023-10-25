#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install python3-venv

# create env called env
python3 -m venv env

# activate env
source ./venvs/env/bin/activate

# requirements

python3 -m pip install ipykernel
python3 -mipykernel install --user --name=env
python3 -m pip install --upgrade pip
pip install -U spacy
python3 -m pip install -r requirements.txt
python -m spacy download en_core_web_md
python3 -m pip install datasets

## if requirements change then rerun this again, also in requirements.txt


