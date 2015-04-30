#!/bin/bash
echo " -------------------- PIGET BOOTSTRAPER --------------------- "
echo " "

if [ $(id -u) -ne 0 ]; then
        echo "ERROR  : Script must be run as root."
	echo "ACTION : sudo /boot/bootstrap/piget "
        exit 1
fi

echo "--> Checking if your Raspberry Pi is connected to the internet"
ping -c1 www.google.com && internet=1 || internet=0

if [[ $internet == 0 ]]
then
	echo "ERROR : You must be connected to internet to bootstrap your Raspberry Pi"
	exit 1
fi

echo "--> Installing piget framework"

#Generating piget directory
mkdir /opt/piget

#We remove core functions if previously installed
rm -rf /opt/piget/core

#Cloning core scripts repository
git clone https://github.com/pigetnet/core /opt/piget/core

#Export path to use core scripts
PATH=/opt/piget/core/graphics:$PATH
PATH=/opt/piget/core/install:$PATH
PATH=/opt/piget/core/network:$PATH
PATH=/opt/piget/core/info:$PATH
PATH=/opt/piget/core/string:$PATH

#Testing PIGET
modifyBashStartup core
PiTimeZone
description "PIGET WAS SUCCESFULLY INSTALLED"
