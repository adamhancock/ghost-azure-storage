#!/bin/sh
mkdir -p /var/lib/ghost/content/adapters/storage
cp -vR node_modules/ghost-azure-storage /var/lib/ghost/content/adapters/storage/
chown -R node:node /var/lib/ghost/content/adapters/content
exec docker-entrypoint.sh "$@"
