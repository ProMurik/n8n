FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y ffmpeg yt-dlp
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
ENV N8N_HOST=${SUBDOMAIN}.${DOMAIN_NAME}
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://${SUBDOMAIN}.${DOMAIN_NAME}/
USER node
