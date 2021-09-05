#!/bin/bash

USER_ID=`id -u`

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    printf '\33[0;31m Please run this file as sudo \n'
    printf '\t sudo ./install-packages \33[0m'
    exit
fi

pacman -S --noconfirm latte-dock fish starship
