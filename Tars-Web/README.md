# Tars-Web

基于官方ubuntu-16.04的tars框架运行环境 

## 依赖
    tars_mysql  tars_master

## 下载TarsWeb代码
    git pull https://github.com/TarsCloud/TarsWeb.git

## build
     docker build  -t tarsweb .

## run
    docker run -it --name tars_web --link tars_mysql --link tars_master --env MOUNT_DATA=false --env TARSMASTER=tars_master   --env DBIP=tars_mysql  --env DBPort=3306 --env DBUser=root --env DBPassword=123456 -p 3000:3000   -v /e/github/TarsDocker/Tars-Master/var/tars_data:/data  tarsweb


## attack
   docker exec -it tars "/bin/bash" 