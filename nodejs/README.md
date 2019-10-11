# Tars-Web

基于官方ubuntu-16.04的 nodejs

## 依赖
    node-v8.15.1

## 下载 node-v8.15.1
    wget https://nodejs.org/download/release/v8.15.1/node-v8.15.1-linux-x64.tar.gz

## build
    docker build -t nodejs:v8.15.1 .

## run
    docker run -it --name nodejs  nodejs:v8.15.1 bash


## attack
   docker exec -it nodejs "/bin/bash" 