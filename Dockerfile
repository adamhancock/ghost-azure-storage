FROM ghost:latest
# RUN mkdir -p /var/lib/ghost/content/adapters/storage
# RUN cp -vR node_modules/ghost-azure-storage /var/lib/ghost/content/adapters/storage/
# RUN chown -R node:node /var/lib/ghost/content/adapters/content
COPY entrypoint-wrapper.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh
RUN npm install ghost-azure-storage
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
CMD ["node", "current/index.js"]
