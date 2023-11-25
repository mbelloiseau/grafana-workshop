#!/usr/bin/env bash

for x in $(seq 1 100) ; do
    JSON=$(curl -s https://api.quotable.io/random)
    echo ${JSON} | jq
    echo ${JSON} | promtail \
        -stdin \
        -server.disable \
        -client.url "http://loki:3100/loki/api/v1/push" 2>/dev/null
    sleep 6
done

exit 0
