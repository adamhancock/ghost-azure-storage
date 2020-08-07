#!/bin/sh
mkdir -p content/adapters/storage
cp -vR node_modules/ghost-storage-azure content/adapters/storage/
git clone https://github.com/adamhancock/casper-ah.git content/themes/casper-ah
chown -R node:node ./content
exec docker-entrypoint.sh "$@"
