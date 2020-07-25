#!/bin/sh

set -e

APP_DIR=/home/isucon/isubata/webapp/go/

cd $APP_DIR
git pull origin master
make
sudo systemctl restart isubata.golang.service

echo "build and restart app"
