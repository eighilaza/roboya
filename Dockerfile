FROM node:4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

ENV HUBOT_ADAPTER=lets-chat
ENV HUBOT_LOG_LEVEL=debug

CMD bin/hubot
