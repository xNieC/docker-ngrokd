FROM node:slim
MAINTAINER xNie <cool_lyc100@163.com>
COPY /hexo /hexo
RUN npm install hexo-cli -g
RUN /bin/sh -c 'cd /hexo && npm install'
RUN echo "show files"
RUN ls
RUN hexo g
RUN echo "show files"
RUN ls
EXPOSE 4000
