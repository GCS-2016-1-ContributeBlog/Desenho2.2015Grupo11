#!/bin/bash
echo -e "\nconfiguration database and its tables\n"
cd /vagrant 
mysql -u root -proot -e "source contribute.sql;"

echo -e "\nRun the project on IP: 192.168.33.10\n"
cd /
sudo cp /vagrant/target/Desenho2.2015Grupo11.war /var/lib/tomcat7/webapps/
cd etc/default
sudo cp /vagrant/target/tomcat7 /etc/default/tomcat7
sudo service tomcat7 restart









