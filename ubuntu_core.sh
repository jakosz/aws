#!/bin/bash

sudo apt-get update
sudo apt-get -y dist-upgrade

# firewall
sudo apt-get -y install ufw
sudo ufw allow 22
sudo ufw enable

# packages
sudo apt-get -y install git parallel awscli p7zip-full

# ssh
sudo echo "AllowUsers ubuntu" >> /etc/ssh/sshd_config
sudo echo "PermitRootLogin no" >> /etc/ssh/sshd_config

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
echo set smartindent >> $vimrc

# aws
echo -e '\n\n'
echo 'Remember to run aws configure!'
echo -e '\n\n'
