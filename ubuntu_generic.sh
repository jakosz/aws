#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

# firewall
sudo apt-get -y install ufw
sudo ufw allow 22
sudo ufw enable

# ssh
sudo echo "AllowUsers ubuntu" >> /etc/ssh/sshd_config
sudo echo "PermitRootLogin no" >> /etc/ssh/sshd_config

# basic tools
sudo apt-get -y install git parallel awscli p7zip-full
sudo apt-get -y install r-base
sudo apt-get -y install python-pip python-dev python-matplotlib \  
                        python-numpy python-scipy python-sklearn python-pandas \ 
                        ipython ipython-notebook \
                        python-sympy python-nose

# .bashrc
bashrc=/home/ubuntu/.bashrc

echo -e "alias ls='ls -lh --color=auto'" >> $bashrc
source $bashrc

# .vimrc
vimrc=/home/ubuntu/.vimrc

echo syntax on >> $vimrc
echo set number >> $vimrc
echo set expandtab >> $vimrc
echo set tabstop=4 >> $vimrc
echo set shiftwidth=4 >> $vimrc
echo set smartindent on >> $vimrc

# aws
echo -e '\n\n'
echo 'Remember to run aws configure!'
echo -e '\n\n'
