#!/bin/bash

#script de configuração do banco de dados
cd /vagrant 
mysql -u root -proot -e "source contribute.sql;"

#script para rodar o projeto no IP:192.168.33.10
cd /
sudo cp /vagrant/target/Desenho2.2015Grupo11.war /var/lib/tomcat7/webapps/
cd etc/default
sudo cp /vagrant/target/tomcat7 /etc/default/tomcat7
sudo service tomcat7 restart









