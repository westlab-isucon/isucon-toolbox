#!/bin/sh

set -e

# log rotate
now=`date +%Y%m%d-%H%M%S`
mv /var/log/nginx/access.log/ /var/log/nginx/access.log.$now
mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now

# reload all
systemctl reload nginx
mysqladmin -uisucon -pisucon flush-logs
systemctl restart isubata.golang.service

journalctl -f

