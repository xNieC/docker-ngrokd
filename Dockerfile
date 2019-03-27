FROM node:slim
MAINTAINER xNie <cool_lyc100@163.com>
#COPY /hexo /hexo
RUN mkdir /hexo
RUN npm install hexo-cli -g
RUN /bin/sh -c 'cd /hexo && npm install'
RUN echo "show files"
RUN /bin/sh -c 'cd /hexo && ls'
RUN /bin/sh -c 'cd /hexo && hexo init'
RUN echo "show files"
RUN /bin/sh -c 'cd /hexo && ls'
EXPOSE 4000
