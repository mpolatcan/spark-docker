#!/bin/bash

SPARK_K8S_FILES=(
  # ---------------------------- CONFIGURATIONS ----------------------------
  "configuration/spark_init.yml"
  "configuration/spark_master.yml"
  "configuration/spark_worker.yml"
  "configuration/hdfs_master.yml"
  "configuration/hdfs_slave.yml"
  # ------------------------------------------------------------------------

  # ------------------------------ SERVICES --------------------------------
  "service/spark.yml"
  "service/spark_master_webapps.yml"
  "service/spark_worker_webapps.yml"
  "service/spark_other_webapps.yml"
  "service/hdfs_master_webapps.yml"
  "service/hdfs_slave_webapps.yml"
  # ------------------------------------------------------------------------

  # ----------------------------- DEPLOYMENTS ------------------------------
  "deployment/spark_master.yml"
  "deployment/spark_worker.yml"
  "deployment/hdfs_master.yml"
  "deployment/hdfs_slave.yml"
  # ------------------------------------------------------------------------

  # ------------------------------- STORAGE CLASSESS -----------------------
  "storage-class/gce_pd_hdd.yml"
  "storage-class/gce_pd_ssd.yml"
  # ------------------------------------------------------------------------
)

for SPARK_K8S_FILE in ${SPARK_K8S_FILES[@]}; do
  kubectl $1 -f $SPARK_K8S_FILE
done