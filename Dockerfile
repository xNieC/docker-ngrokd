FROM node:slim
MAINTAINER xNie <cool_lyc100@163.com>
COPY hexo ./
RUN npm install hexo-cli -g
RUN npm install
RUN hexo g
RUN echo "生成完毕,浏览目标文件"
RUN ls
EXPOSE 4000
