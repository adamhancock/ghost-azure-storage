#!/bin/sh
RUN mkdir -p /var/lib/ghost/content/adapters/storage
RUN cp -vR node_modules/ghost-azure-storage /var/lib/ghost/content/adapters/storage/
RUN chown -R node:node /var/lib/ghost/content/adapters/content
exec docker-entrypoint.sh "$@"
