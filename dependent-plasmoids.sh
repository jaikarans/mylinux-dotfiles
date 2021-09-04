#!/bin/bash

USER_ID=`id -u`

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    echo 'Please run this file as sudo'
    echo 'sudo ./dependent-plasmoids'
    exit
fi

# installing cmake for Netspeed Widget
pacman -S --noconfirm cmake extra-cmake-modules

echo
echo '==> Installing plasmoids...'
echo 

# if repo alredy exist then delete it before cloning 
if [ -d "./plasma-applet-netspeed-widget" ] 
then
    rm -rf ./plasma-applet-netspeed-widget
fi

git clone https://github.com/dfaust/plasma-applet-netspeed-widget.git
echo 
echo '# Installing Netspeed Widget...'
cd plasma-applet-netspeed-widget
mkdir build
cd build
cmake -DCMAKE_INASTALL_PREFIX=/usr ..
make
sudo make install

# removing cloned repo from dotfiles repo
cd ../..
rm -rf plasma-applet-netspeed-widget

