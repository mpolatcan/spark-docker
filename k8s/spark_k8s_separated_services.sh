#!/bin/bash

SPARK_K8S_FILES=(
  # ---------------------------- CONFIGURATIONS ----------------------------
  "configuration/common/spark_init.yml"
  "configuration/separated-services-cluster/spark_master.yml"
  "configuration/separated-services-cluster/spark_worker.yml"
  "configuration/separated-services-cluster/hdfs_master.yml"
  "configuration/separated-services-cluster/hdfs_slave.yml"
  # ------------------------------------------------------------------------

  # ------------------------------ SERVICES --------------------------------
  "service/common/spark.yml"
  "service/separated-services-cluster/spark_master_webapps.yml"
  "service/separated-services-cluster/spark_worker_webapps.yml"
  "service/separated-services-cluster/spark_other_webapps.yml"
  "service/separated-services-cluster/hdfs_master_webapps.yml"
  "service/separated-services-cluster/hdfs_slave_webapps.yml"
  # ------------------------------------------------------------------------

  # ----------------------------- DEPLOYMENTS ------------------------------
  "deployment/separated-services-cluster/spark_master.yml"
  "deployment/separated-services-cluster/spark_worker.yml"
  "deployment/separated-services-cluster/hdfs_master.yml"
  "deployment/separated-services-cluster/hdfs_slave.yml"
  # ------------------------------------------------------------------------
)

for SPARK_K8S_FILE in ${SPARK_K8S_FILES[@]}; do
  kubectl $1 -f $SPARK_K8S_FILE
done