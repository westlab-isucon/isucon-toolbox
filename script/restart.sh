#!/bin/sh
# root権限で実行する

set -e

# log rotate
now=`date +%Y%m%d-%H%M%S`
if [ -e /var/log/nginx/access.log ]; then
  mv /var/log/nginx/access.log /var/log/nginx/access.log.$now
fi
if [ -e /var/log/mysql/slow.log ]; then
  mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now
fi
#sudo touch /var/log/nginx/access.log
#sudo touch /var/log/mysql/slow.log

# reload all
systemctl reload nginx
# mysqladmin -uisucon -pisucon flush-logs
systemctl restart mysql
systemctl restart isubata.golang.service

journalctl -f

