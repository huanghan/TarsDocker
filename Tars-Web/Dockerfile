FROM nodejs:v8.15.1

WORKDIR /root/
COPY sources.list  /etc/apt/sources.list
##时区 
##ENV TZ=Asia/Shanghai
	
ENV DBIP tars_mysql
ENV DBPort 3306
ENV DBUser root
ENV DBPassword 123456

# Mysql tars数据库默认密码
ENV DBTarsPass tars2015

RUN  apt-get update 
#安装rsync wget iproute小工具
RUN  apt-get install -y rsync && apt-get install -y wget && apt install -y iproute
#安装mysql客户端
RUN  apt-get install -y mysql-client-5.7 

RUN  apt-get clean

#copy tarsweb管理台
COPY TarsWeb /usr/local/tarsweb

RUN  cd /usr/local/tarsweb/ && npm install --registry=https://registry.npm.taobao.org

#
ENV TARSMASTER tars_master
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
EXPOSE 3000

