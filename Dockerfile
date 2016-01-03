FROM node:4

ENV http_proxy="http://10.43.240.11:8080/"
ENV https_proxy="http://10.43.240.11:8080/"
ENV HTTP_PROXY="http://10.43.240.11:8080/"
ENV HTTPS_PROXY="http://10.43.240.11:8080/"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

ENV HUBOT_ADAPTER=lets-chat
ENV HUBOT_LOG_LEVEL=debug

CMD bin/hubot
