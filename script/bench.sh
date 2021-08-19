#! /bin/bash
REMOTE_IP=0.0.0.0
BENCH_DIR=/home/isucon/isubata/bench/

cd $BENCH_DIR

./bin/bench -remotes=$REMOTE_IP -output result.json
cat result.json | jq
cat result.json | jq ".score"
cat result.json | jq ".score" | /home/isucon/isucon2020-toolbox/script/post_discord.sh
