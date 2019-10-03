#!/bin/bash

TARS_SRC_DIR='../Tars-FrameWork/TarsFramework'

TARS_DIR='./tars'
BUILD_DIR='./tars/build'
SQL_DIR='./tars/sql'
CFG_DIR='./tars/confs'

echo "copy ${TARS_SRC_DIR}/build/*.tgz"
rm -rf ${TARS_DIR}/build && mkdir -p ${TARS_DIR}/build

cp ${TARS_SRC_DIR}/build/framework.tgz           ${TARS_DIR}/build/framework.tgz
cp ${TARS_SRC_DIR}/build/tarslog.tgz             ${TARS_DIR}/build/tarslog.tgz
cp ${TARS_SRC_DIR}/build/tarsnotify.tgz          ${TARS_DIR}/build/tarsnotify.tgz
cp ${TARS_SRC_DIR}/build/tarsproperty.tgz        ${TARS_DIR}/build/tarsproperty.tgz
cp ${TARS_SRC_DIR}/build/tarsqueryproperty.tgz   ${TARS_DIR}/build/tarsqueryproperty.tgz
cp ${TARS_SRC_DIR}/build/tarsquerystat.tgz       ${TARS_DIR}/build/tarsquerystat.tgz
cp ${TARS_SRC_DIR}/build/tarsstat.tgz            ${TARS_DIR}/build/tarsstat.tgz


echo "copy ${TARS_SRC_DIR}/sql"
rm -rf ${SQL_DIR}
cp -a  ${TARS_SRC_DIR}/sql ${SQL_DIR}

echo "copy ${TARS_SRC_DIR}/deploy/conf"
rm -rf ${CFG_DIR} && mkdir -p ${CFG_DIR}
cp ${TARS_SRC_DIR}/deploy/tarslog/conf/tars.tarslog.config.conf                         ${CFG_DIR}/
cp ${TARS_SRC_DIR}/deploy/tarsnotify/conf/tars.tarsnotify.config.conf                   ${CFG_DIR}/
cp ${TARS_SRC_DIR}/deploy/tarsproperty/conf/tars.tarsproperty.config.conf               ${CFG_DIR}/
cp ${TARS_SRC_DIR}/deploy/tarsqueryproperty/conf/tars.tarsqueryproperty.config.conf     ${CFG_DIR}/
cp ${TARS_SRC_DIR}/deploy/tarsquerystat/conf/tars.tarsquerystat.config.conf             ${CFG_DIR}/
cp ${TARS_SRC_DIR}/deploy/tarsstat/conf/tars.tarsstat.config.conf                       ${CFG_DIR}/