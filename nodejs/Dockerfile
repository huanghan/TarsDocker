FROM ubuntu:16.04

WORKDIR /root/

#安装nodejs v8.15.1 npm
ADD node-v8.15.1-linux-x64.tar.gz /usr/local
RUN ln -sf /usr/local/node-v8.15.1-linux-x64/bin/node    /usr/local/bin/node \
    && ln -sf /usr/local/node-v8.15.1-linux-x64/bin/npm  /usr/local/bin/npm  \
    && ln -sf /usr/local/node-v8.15.1-linux-x64/bin/npx  /usr/local/bin/npx  \
    && npm config set user 0 

#安装 pm2
RUN  npm install -g pm2 && ln -sf /usr/local/node-v8.15.1-linux-x64/bin/pm2 /usr/local/bin/pm2

#安装 wget iproute
#RUN apt-get update &&  apt-get install -y wget && apt install -y iproute && apt-get clean 

RUN apt-get update 
RUN apt-get install -y python2.7 && ln -sf  /usr/bin/python2.7  /usr/bin/python 
RUN apt-get clean 
 
VOLUME ["/data"]
 

#     docker build -t nodejs:v8.15.1 .