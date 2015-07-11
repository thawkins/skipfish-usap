#!/bin/sh
build/bin/skipfish -d 5 -t 60 -r 60 -i 60 -e -E -Q -v -u -P -r 100000000 -o ~/tmp/out$1 @list.txt
# build/bin/skipfish -d 5 -t 60 -r 60 -i 60 -e -E -Q -x 10000000 -c 10000000 -v -u -P -r 10000000 -B assets.airsoc.dev -o ~/tmp/out17 @list.txt

