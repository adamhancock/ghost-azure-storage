#!/bin/sh
mkdir -p content/adapters/storage
cp -vR node_modules/ghost-azure-storage content/adapters/storage/
exec docker-entrypoint.sh "$@"
