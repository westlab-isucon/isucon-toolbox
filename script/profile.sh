#! /bin/sh

sudo alp --file /var/log/nginx/access.log ltsv --sort=avg --reverse | head -n 20

sudo pt-query-digest --limit 10 /var/log/mysql/slow.log


