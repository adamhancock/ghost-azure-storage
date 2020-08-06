FROM ghost:latest
RUN npm install ghost-azure-storage
# RUN mkdir -p /var/lib/ghost/content/adapters/storage
# RUN cp -vR node_modules/ghost-azure-storage /var/lib/ghost/content/adapters/storage/
# RUN chown -R node:node /var/lib/ghost/content/adapters/content
COPY entrypoint-wrapper.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh
USER node
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
