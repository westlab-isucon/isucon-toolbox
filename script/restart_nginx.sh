#!/bin/bash

set -e

now=`date +%Y%m%d-%H%M%S`
if [ -e /var/log/nginx/access.log ]; then
  sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.$now
fi
sudo systemctl restart nginx

echo "restart nginx"
