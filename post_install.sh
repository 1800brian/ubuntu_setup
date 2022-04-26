#!/bin/bash

echo "Post Fresh OS Software install script"

apt-get update && sudo apt-get upgrade -y

# Software grab
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install python3-pip
sudo python3 -m pip install virtualenv 

# Python virtualenv setup
mkdir ~/.virtualenvs
python3 -m pip install virtualenvwrapper
echo 'PYTHONPATH=${PYTHONPATH}:/usr/bin' >> ~/.bashrc
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> ~/.bashrc
echo 'export WORKON_HOME=~/.virtualenvs' >> ~/.bashrc
echo '~/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc
echo 'source ~/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc

## VIMRC Grab
wget https://raw.githubusercontent.com/1800brian/ubuntu_setup/master/vimrc
mv vimrc $HOME/.vimrc


