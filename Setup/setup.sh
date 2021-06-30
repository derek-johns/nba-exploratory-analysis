#!/usr/bin/env bash
# A bash script to setup the environment for project.

## Install and/or upgrade pip.
python3 -m pip install --upgrade pip

# Install virtualenv.
pip3 install virtualenv

# Create virtual environment in project root folder.
virtualenv -p python nba_exploratory_env

# Activate virtualenv.
source nba_exploratory_env/bin/activate

# Install necessary dependencies.
pip3 install ipykernel
pip3 install jupyter
pip3 install pandas
pip3 install matplotlib
pip3 install requests
pip3 install nba-api
pip3 install seaborn

# Save dependencies to requirements file.
pip3 freeze > ./Setup/requirements.txt

# Create custom kernel.
python3 -m ipykernel install --user --name nba_exploratory_env --display-name "nba-exploratory-kernel"

# Open Jupyter Notebooks.
jupyter notebook
