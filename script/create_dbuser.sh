#!/bin/bash
mysql -u root -pmysql -e "CREATE USER 'isucari'@'%' IDENTIFIED BY 'isucari';"
mysql -u root -pmysql -e "GRANT ALL on *.* TO 'isucari'@'%';"
mysql -u root -pmysql -e "CREATE USER 'isucari'@'localhost' IDENTIFIED BY 'isucari';"
mysql -u root -pmysql -e "GRANT ALL on *.* TO 'isucari'@'localhost';"

