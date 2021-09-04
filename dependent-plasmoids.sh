#!/bin/bash

# \33[0;31m is for Red Color font
# \33[0;32m is for Green Color font
# \33[0m    is for default color font (i.e white)

USER_ID=`id -u`

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    printf '\33[0;31m Please run this file as sudo \n'
    printf '\t sudo ./dependent-plasmoids \33[0m'
    exit
fi

# installing cmake for Netspeed Widget
pacman -S --noconfirm cmake extra-cmake-modules

printf '\33[0;32m \n\n ===> Installing plasmoids... \n \33[0m' 

# if repo alredy exist then delete it before cloning 
if [ -d "./plasma-applet-netspeed-widget" ] 
then
    rm -rf ./plasma-applet-netspeed-widget
fi

git clone https://github.com/dfaust/plasma-applet-netspeed-widget.git

printf '\33[0;32m \n\n# Installing Netspeed Widget... \n \33[0m'
cd plasma-applet-netspeed-widget
mkdir build
cd build
cmake -DCMAKE_INASTALL_PREFIX=/usr ..
make
sudo make install

# removing cloned repo from dotfiles repo
cd ../..
rm -rf plasma-applet-netspeed-widget

