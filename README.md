# NFTIDsFromCollection
Get a list of all NFT IDs for a Collection using the Mintgarden API

## Requiements
You will need your Mintgarden Collection ID and update that line in the script.

**How to find your Mintgarden Collection ID**
1. Go to https://mintgarden.io
2. Search for your collection name    _ie. BattleKats_
3. URL result = https://mintgarden.io/collections/battlekats-col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud
4. Your Mintgarden Collection ID is everything after the hyphen in the resulting URL.  _ie. col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud

## Running the command
Use the `bash` command to run the script and pass in the Collection ID as the first parameter. You can also use redirect to send the output to a file.

Example:
```

  bash nftids_fromcollection.sh col1kmrzafjx6ej8w79tz5vnjt4w8xuq2p6nmnheelgwwu3rsgsar0fsxc4wud > nftids.txt

```
