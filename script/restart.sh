#!/bin/sh
# root権限で実行する

set -e

sh ./restart_nginx.sh
sh ./restart_mysql.sh
sh ./restart_app.sh

sudo journalctl -f

