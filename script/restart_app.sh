#!/bin/sh

set -e

APP_DIR=/home/isucon/isuumo/webapp/go/

cd $APP_DIR
#git pull origin master
make
sudo systemctl restart isuumo.go.service

echo "build and restart app"
