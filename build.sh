#!/bin/bash

SPARK_VERSIONS=(
    "2.4.4"
    "2.3.4"
)

HADOOP_VERSIONS=(
    "2.7"
    "2.6"
)

SPARK_TYPES=(
   "spark"
   "pyspark"
   "sparkr"
)

DISTS=(
    "alpine"
    "ubuntu"
)

# $1: SPARK_TYPE
# $2: DIST
# $3: SPARK_VERSION
# $4: HADOOP_VERSION
function build_image() {
  sudo docker build -q -t mpolatcan/$1:$2-$3-hadoop-$4 --build-arg SPARK_VERSION=$3 --build-arg HADOOP_VERSION=$4 ./$2/$1/
	sudo docker push mpolatcan/$1:$2-$3-hadoop-$4
	sudo docker rmi mpolatcan/$1:$2-$3-hadoop-$4
}

for SPARK_TYPE in ${SPARK_TYPES[@]}; do
    for SPARK_VERSION in ${SPARK_VERSIONS[@]}; do
        for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
            for DIST in ${DISTS[@]}; do
                build_image $SPARK_TYPE $DIST $SPARK_VERSION $HADOOP_VERSION
            done
        done
    done
done