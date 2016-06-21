#!/bin/bash

#Atualizando libs
sudo apt-get update

#Instalando Virtual Box
sudo apt-get install virtualbox
sudo apt-get install virtualbox-dkms

#Instalando Vagrant
sudo apt-get install vagrant

#Imagem de Box (ubuntu 14.04 32Bits)
sudo vagrant box add precise32 http://files.vagrantup.com/precise32.box

#Instalando o CHEF
sudo vagrant plugin install vagrant-omnibus

#Subindo box
vagrant up

#subindo configs da box
vagrant provision
