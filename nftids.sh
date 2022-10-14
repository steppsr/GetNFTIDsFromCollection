#!/bin/bash

appdir=`pwd`
cd ~/chia-blockchain
. ./activate
cd $appdir

# How to find your Mintgarden Collection ID
# 1. Go to https://mintgarden.io
# 2. Search for your collection name    ie. BattleKats
# 3. URL result = https://mintgarden.io/collections/battlekats-col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud
# 4. Your Mintgarden Collection ID is everything after the hyphen in the resulting URL.  ie. col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud
collection_id="col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud"
nfts=`curl -s https://api.mintgarden.io/collections/$collection_id/nfts/ids`
echo $nfts | jq '.[].encoded_id' | cut -c 2- | rev | cut -c 2- | rev > ./list.txt

