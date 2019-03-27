FROM ubuntu
FROM node
MAINTAINER xNie <cool_lyc100@163.com>
#COPY /hexo /hexo
RUN npm install hexo-cli -g
RUN /bin/sh -c 'hexo init hexo'
RUN /bin/sh -c 'cd /hexo && npm install'
RUN echo "show files"
RUN /bin/sh -c 'cd /hexo && ls'
EXPOSE 4000
