#!/bin/bash -e

# Assuming pip is installed
# sudo easy_install pip


sudo -v
sudo ln -sf $(pwd)/fitbit /usr/local/bin/fitbit
git clone https://github.com/orcasgit/python-fitbit.git && cd python-fitbit || (cd python-fitbit ; git pull)
pip install --user -r requirements/base.txt
sudo python setup.py install
pip install --user cherrypy
pip install --user pandas