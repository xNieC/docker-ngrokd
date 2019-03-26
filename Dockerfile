FROM debian:jessie

#COPY ngrokd_linux /ngrokd
RUN npm install hexo-cli -g
ADD https://s3-eu-west-1.amazonaws.com/sequenceiq/ngrokd_linux /ngrokd
RUN chmod +x /ngrokd

ENTRYPOINT ["/ngrokd"]
