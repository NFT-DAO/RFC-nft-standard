#!/bin/bash

cd /Users/philip/go/src/github.com/Univ-Wyo-Education/RFC-nft-standard

# rsync -r --delete -a -v -e "ssh -l philip" . philip@192.168.0.197:/Volumes/k100/Linux-wabl001
# rsync --dry-run \
rsync -r -a -v -e "ssh -l pschlump" \
	--exclude go/pkg/mod \
	. \
	pschlump@192.168.0.199:/mnt/vol3/home-bak/go/src/github.com/Univ-Wyo-Education/RFC-nft-standard

