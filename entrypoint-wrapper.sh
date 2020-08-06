#!/bin/sh
mkdir -p content/adapters/storage
cp -vR node_modules/ghost-azure-storage content/adapters/
chown -R node:node ./content
exec docker-entrypoint.sh "$@"
