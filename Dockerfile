FROM ghost:latest
RUN apt-get update
RUN apt-get install -y git
COPY entrypoint-wrapper.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh
RUN npm install ghost-storage-azure
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
CMD ["node", "current/index.js"]
