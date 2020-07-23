#!/bin/bash
mysql -u root -ppass -e "CREATE USER 'isucon'@'%' IDENTIFIED BY 'isucon';"
mysql -u root -ppass -e "GRANT ALL on *.* TO 'isucon'@'%';"
mysql -u root -ppass -e "CREATE USER 'isucon'@'localhost' IDENTIFIED BY 'isucon';"
mysql -u root -ppass -e "GRANT ALL on *.* TO 'isucon'@'localhost';"

