FROM node:9.4.0-alpine
MAINTAINER Tristan Peers

# Install hubot
RUN npm install -g yo generator-hubot
RUN sed -i -e '/rootCheck/d' '/usr/local/lib/node_modules/yo/lib/cli.js' \
  && mkdir /opt/hubot \
  && cd /opt/hubot \
  && yo hubot \
  --owner="Bot Wrangler <bw@example.com>" \
  --name="Hubot"	\
  --description="Delightfully aware robutt"	\
  --adapter=flowdock	\
  --defaults
