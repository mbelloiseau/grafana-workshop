#!/usr/bin/env bash

while [ true ] ; do
    JSON=$(curl -s https://api.quotable.io/random)
    echo ${JSON} | jq
    echo ${JSON} | promtail \
        -stdin \
        -server.disable \
        -client.url "http://loki:3100/loki/api/v1/push" 2>/dev/null
    sleep $((1 + $RANDOM % 20))
done
