FROM node:slim
MAINTAINER xNie <cool_lyc100@163.com>

RUN apt-get update && apt-get install -y git ssh-client ca-certificates --no-install-recommends && rm -r /var/lib/apt/lists/*

RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

RUN npm install hexo-cli -g

EXPOSE 4000
