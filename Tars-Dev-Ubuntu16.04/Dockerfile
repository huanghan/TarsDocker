FROM ubuntu:16.04

WORKDIR /root/ 

COPY sources.list  /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y libz-dev flex bison  cmake  gcc g++ 

RUN apt-get install -y libmysqlclient-dev \
	&& mkdir -p /usr/local/mysql/lib && mkdir -p /home/tars   \
	&& ln -sf /usr/lib/x86_64-linux-gnu/libmysqlclient.a /usr/local/mysql/lib/libmysqlclient.a \
	&& ln -sf /usr/include/mysql /usr/local/mysql/include 

RUN apt-get clean 

VOLUME ["/data"]

