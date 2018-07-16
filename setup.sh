#!/bin/bash -e

cmd_path="/usr/local/bin/fitbit"

sudo -v

# Make symlink so that 'fitbit' command will work
sudo rm "$cmd_path"
sudo ln -sf $(pwd)/fitbit "$cmd_path"

# Install pip if not already installed
sudo easy_install pip

# Install Python dependencies
pip install --user -r reqs.txt