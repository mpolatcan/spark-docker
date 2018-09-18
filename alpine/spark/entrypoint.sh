#!/usr/bin/env bash

/spark_config_loader.sh

function startMaster() {
    start-master.sh
}

function startWorker() {
    start-slave.sh "spark://${SPARK_MASTER_HOSTNAME}:${SPARK_MASTER_PORT}"
}

[[ "${SPARK_NODE_TYPE}" == "master" ]] && startMaster

[[ "${SPARK_NODE_TYPE}" == "worker" ]] && startWorker

tail -f /dev/null