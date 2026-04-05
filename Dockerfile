FROM node:20-bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install yt-dlp --break-system-packages

RUN npm install -g n8n

ENV N8N_PORT=5697
ENV N8N_HOST=0.0.0.0

EXPOSE 5697

CMD ["n8n", "start"]
