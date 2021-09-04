#!/bin/bash

USER_ID=`id -u`
echo $USER_ID

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    echo 'Please run this file as sudo'
    echo 'sudo ./install-packages'
    exit
fi

pacman -S latte-dock