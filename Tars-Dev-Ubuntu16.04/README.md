# Tars-Dev-Ubuntu16.04

基于官方ubuntu-16.04的tars 框架编译，开发环境，安装有gcc g++ mysqlclient cmake 等必要开发编译工具

代码挂载目录 /home/tars

## build
docker build -t tars-dev .

## run
docker run -it --name tars-dev  tars-dev "/bin/bash"

docker run -it --name tars-dev  -v /c/tars/framework:/home/tars tars-dev "/bin/bash"
