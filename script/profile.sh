#! /bin/bash

# nginx log解析
sudo alp --file /var/log/nginx/access.log ltsv --sort=avg --reverse | head -n 20

# mysql log解析
sudo mysqldumpslow /var/log/mysql/slow.log
# -s c # sort by count
# -t 1000 # 最新1000クエリのみ
# -g grep
# -a すべての数字を N に、文字列を S に抽象化しない（この結果をexplain句で確認することにより、チューニングを行うのが良さそう）
# https://dev.mysql.com/doc/refman/5.6/ja/mysqldumpslow.html
# ex) sudo mysqldumpslow -t 1000 -a -g category /var/log/mysql/slow.log

