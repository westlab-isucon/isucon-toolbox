#!/bin/bash

cat <<EOF >> /etc/mysql/mysql.conf.d/mysqld.cnf
# character settings
character-set-server = utf8mb4

# slow_query
slow_query_log = 1
slow_query_log_file = /var/log/mysql/slow.log
long_query_time = 1

[client]
default-character-set = utf8mb4
EOF

systemctl restart mysql