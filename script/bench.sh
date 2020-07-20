#! /bin/sh
cd ~/isubata/bench/
./bin/bench -remotes=0.0.0.0 -output result.json
cat result.json | jq
