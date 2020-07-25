#!/bin/sh

set -e

now=`date +%Y%m%d-%H%M%S`
if [ -e /var/log/mysql/slow.log ]; then
  sudo mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now
fi
sudo systemctl restart mysql

echo "restart mysql"
