#!/bin/bash

source ubuntu_core.sh

sudo apt-get install linux-image-extra-virtual

sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.0-28_amd64.deb  
sudo apt-get update
sudo apt-get install -y cuda 
echo -e "\nexport PATH=/usr/local/cuda/bin:$PATH\n\nexport LD_LIBRARY_PATH=/usr/local/cuda/lib64" >> .bashrc  

echo ubuntu_cuda: Rebooting in a moment
echo ubuntu_cuda: Remember to build and run a CUDA test /usr/local/cuda/samples/1_Utilities/deviceQuery

sudo reboot
