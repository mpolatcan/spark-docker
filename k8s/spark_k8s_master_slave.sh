#!/bin/bash

SPARK_K8S_FILES=(
  # ---------------------------- CONFIGURATIONS ----------------------------
  "configuration/common/spark_init.yml"
  "configuration/master-slave-cluster/spark_master.yml"
  "configuration/master-slave-cluster/spark_worker.yml"
  # ------------------------------------------------------------------------

  # ------------------------------ SERVICES --------------------------------
  "service/common/spark.yml"
  "service/master-slave-cluster/spark_master_webapps.yml"
  "service/master-slave-cluster/spark_worker_webapps.yml"
  "service/master-slave-cluster/spark_other_webapps.yml"
  # ------------------------------------------------------------------------

  # ----------------------------- DEPLOYMENTS ------------------------------
  "deployment/master-slave-cluster/spark_master.yml"
  "deployment/master-slave-cluster/spark_worker.yml"
  # ------------------------------------------------------------------------
)

for SPARK_K8S_FILE in ${SPARK_K8S_FILES[@]}; do
  kubectl $1 -f $SPARK_K8S_FILE
done