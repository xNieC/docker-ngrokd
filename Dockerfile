FROM node:slim
MAINTAINER xNie <cool_lyc100@163.com>
RUN npm install hexo-cli -g
RUN npm install
RUN hexo g
EXPOSE 4000
