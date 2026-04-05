FROM n8nio/n8n:latest
USER root
RUN apk update && apk add --no-cache ffmpeg yt-dlp
ENV N8N_HOST=${SUBDOMAIN}.${DOMAIN_NAME}
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://${SUBDOMAIN}.${DOMAIN_NAME}/
USER node
