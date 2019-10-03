#!/bin/bash

PROJECT="tars_framework"
WORKHOME=`pwd`
VOLUME="/home/tars"
IMAGE="tars-dev"

echo "PROJECT=$PROJECT"
echo "WORKHOME=$WORKHOME"
 
#eval `boot2docker.exe shellinit`
s=`docker.exe ps -a |grep -w ${PROJECT}`

if [ -n "${s}" ];then 
    Exited=`docker.exe ps -a |grep -w ${PROJECT}|grep -w 'Exited'`
    if [ -n "${s}" ];then 
        echo "start docker container: name=[${PROJECT}]: docker.exe start ${PROJECT}; docker.exe exec -it ${PROJECT} bash "
        docker.exe start ${PROJECT}
        docker.exe exec -it ${PROJECT}  bash -c "cd ${VOLUME};ls -rtla;bash"
    else
        echo "attach docker container: name=[${PROJECT}]: docker.exe exec -it ${PROJECT} bash"
        docker.exe exec -it ${PROJECT} bash -c  "cd ${VOLUME};ls -rtla;bash"
    fi
else 
    echo "run docker ${PROJECT} image"
    echo "docker.exe run -it --name ${PROJECT} -v  //${WORKHOME}:${VOLUME}  ${IMAGE}  bash"
          docker.exe run -it --name ${PROJECT} -v  //${WORKHOME}:${VOLUME}  ${IMAGE}  bash -c "cd ${VOLUME};ls -rtla;bash"
fi
