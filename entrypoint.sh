#!/bin/bash

service quagga start
sleep 3
while sleep 2; do
  if ps -ef | grep 'quagga restart' | grep -qv grep; then
    :
  else
    exit 1
  fi
done
