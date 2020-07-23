#! /bin/sh
REMOTE_IP=172.31.12.158
BENCH_DIR=/home/isucon/isubata/bench/

cd $BENCH_DIR

./bin/bench -remotes=$REMOTE_IP -output result.json
cat result.json | jq
cat result.json | jq ".score"

