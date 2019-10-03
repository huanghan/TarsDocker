# Tars-Master

基于官方ubuntu-16.04的tars框架运行环境 

## 依赖
    依赖Tars-FrameWork编译好各个tars组件

## 准备组件、配置、sql
    sh prepare.sh

## build
    docker build -f Dockerfile -t tars ./tars/

## run
#### mysql
    docker run --name tars_mysql -e MYSQL_ROOT_PASSWORD=123456  -d -p 3306:3306 -v  -v /e/github/TarsDocker/Tars-Master/var/mysql_data:/var/lib/mysql mysql:5.7  --sql_mode=NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION --innodb_use_native_aio=0

#### tars-master
    docker run -d -it --name tars_master --link tars_mysql --env MOUNT_DATA=false --env DBIP=tars_mysql  --env DBPort=3306 --env DBUser=root --env DBPassword=123456  -p 3080:3080 -v /e/github/TarsDocker/Tars-Master/var/tars_data:/data  tars

#### tars-node


## attack
   docker exec -it tars "/bin/bash" 