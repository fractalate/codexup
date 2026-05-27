FROM debian

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        bubblewrap \
        build-essential \
        git \
        npm \
        ripgrep \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN npm i -g @openai/codex \
 && rm -rf /root/.npm
