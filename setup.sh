#!/bin/bash
echo -e "\nUpdating the package list\n"
sudo apt-get update

echo -e "\nInstalling Virtual Box\n"
sudo apt-get install virtualbox
sudo apt-get install virtualbox-dkms

echo -e "\nInstalling Vagrant\n"
sudo apt-get install vagrant

echo -e "\nImage Box (Ubuntu 14.04 32-bit)\n"
sudo vagrant box add precise32 http://files.vagrantup.com/precise32.box

echo -e "\nInstalling CHEF\n"
sudo vagrant plugin install vagrant-omnibus

echo -e "\nUp box\n"
vagrant up

echo -e "\nConfigs up the box\n"
vagrant provision
