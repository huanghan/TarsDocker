FROM ubuntu:16.04

WORKDIR /root/
#COPY sources.list  /etc/apt/sources.list
##时区 
##ENV TZ=Asia/Shanghai
	
ENV DBIP 127.0.0.1
ENV DBPort 3306
ENV DBUser root
ENV DBPassword password

# Mysql tars数据库默认密码
ENV DBTarsPass tars2015

RUN  apt-get update 
#安装rsync wget iproute小工具
RUN  apt-get install -y rsync && apt-get install -y wget && apt install -y iproute
#安装mysql客户端
RUN  apt-get install -y mysql-client-5.7 
#安装nodejs npm
#RUN  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && . ~/.bashrc && nvm install v8.15.1
#RUN  apt-get install -y npm 
#RUN  npm install -g pm2 --registry=https://registry.npm.taobao.org 



#安装解压framework.tgz
ADD tars/build/framework.tgz /usr/local/app/tars/

#copy tars组件 
COPY tars/build/tars*.tgz   /root/ 
#COPY TarsWeb /usr/local/tarsweb

ADD tars/confs /root/confs
ADD tars/sql   /root/sql


#RUN  cd /usr/local/tarsweb/ && npm install -g pm2 @tars/deploy --registry=https://registry.npm.taobao.org \

RUN  apt-get clean

#  
ENV ENABLE_LOGIN false

#  
ENV MOUNT_DATA false

#  
ENV INET_NAME eth0

#  
#ENV LC_ALL "zh_CN.UTF-8"

VOLUME ["/data"]
	
## 
COPY install.sh /root/init/
COPY entrypoint.sh /sbin/

RUN chmod 755 /sbin/entrypoint.sh
ENTRYPOINT [ "/sbin/entrypoint.sh", "start" ]

#Expose ports
#EXPOSE 3000

