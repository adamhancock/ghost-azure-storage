#!/bin/sh
cp -vR node_modules/ghost-azure-storage /var/lib/ghost/versions/3.28.0/core/server/adapters/
chown -R node:node /var/lib/ghost/versions/3.28.0/core/server/adapters/
exec docker-entrypoint.sh "$@"
