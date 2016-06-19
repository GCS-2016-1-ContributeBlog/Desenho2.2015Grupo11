#!/bin/bash

#Atualizando libs
sudo apt-get update

#Instalando Virtual Box
sudo apt-get install virtualbox
sudo apt-get install virtualbox-dkms

#Instalando Vagrant
sudo apt-get install vagrant

##Imagem de Box
sudo vagrant box add precise32 http://files.vagrantup.com/precise32.box

#subindo configs da box
vagrant provision

#Subindo box
vagrant up


