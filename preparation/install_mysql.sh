#!/bin/sh
set -e
sudo apt update
sudo apt -y install unzip gnupg2 wget htop jq

# mysql8
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
sudo dpkg -i ./mysql-apt-config_0.8.14-1_all.deb
sudo apt update
sudo apt -y install mysql-server
rm mysql-apt-config_0.8.14-1_all.deb

sudo cp ./mysql/my.cnf /etc/mysql/
sudo systemctl enable mysql
sudo systemctl start mysql

