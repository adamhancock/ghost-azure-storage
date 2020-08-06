#!/bin/sh
npm install ghost-azure-storage
mkdir -p content/adapters/storage
cp -vR node_modules/ghost-azure-storage content/adapters/storage/
chown -R node:node ./content
exec docker-entrypoint.sh "$@"
