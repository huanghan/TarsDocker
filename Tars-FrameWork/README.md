# Tars-FrameWork

基于Tars-Dev Docker 镜像的开发编译工程，通过将源代码目录挂载到容器目录 /home/tars 下进行编译


## 下载TarsFramework源码
    cd ${source_folder}
    git clone https://github.com/TarsCloud/TarsFramework.git --recursive
    
    cd ${source_folder}/TarsFramework
    git submodule update --init --recursive

## 下载Docker编译环境
    docker pull tars-dev

## 启动编译环境
    docker run -it --name tars_framework  -v ${source_folder}:/home/tars tars-dev "/bin/bash"

## 编译
    cd /home/tars/TarsFramework/build
    chmod u+x build.sh 
    ./build.sh prepare 
    ./build.sh all

## 安装头文件和lib
    ./build.sh install

## 打包组件
    make framework-tar
    make tarslog-tar
    make tarsnotify-tar
    make tarsproperty-tar
    make tarsqueryproperty-tar
    make tarsquerystat-tar
    make tarsstat-tar
    