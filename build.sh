#!/bin/bash

HADOOP_VERSIONS=(
    "3.2.1"
    "3.1.3"
    "2.9.2"
    "2.8.5"
    "2.7.7"
)

SPARK_TYPES=(
    "spark"
    "pyspark"
)

SPARK_VERSIONS=(
    "2.4.4"
    "2.3.4"
)

SPARK_HADOOP_VERSIONS=(
    "2.7"
)

JAVA_VERSIONS=(
    "8"
    "11"
)

function build_base_image() {
  sudo docker build -q -t mpolatcan/spark:base-hadoop-$1-java$2 --build-arg HADOOP_VERSION=$1 --build-arg JAVA_VERSION=$2 ./src/base
  sudo docker push mpolatcan/spark:base-hadoop-$1-java$2
  sudo docker rmi mpolatcan/spark:base-hadoop-$1-java$2
}

function build_image() {
  sudo docker build -q -t mpolatcan/$1:$2-hadoop-$4-java$5 --build-arg SPARK_VERSION=$2 --build-arg SPARK_HADOOP_VERSION=$3 --build-arg HADOOP_VERSION=$4 --build-arg JAVA_VERSION=$5 ./src/$1/
	sudo docker push mpolatcan/$1:$2-hadoop-$4-java$5
	sudo docker rmi mpolatcan/$1:$2-hadoop-$4-java$5
}

# Build Spark base images for each Hadoop and Java versions
for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
  for JAVA_VERSION in ${JAVA_VERSIONS[@]}; do
      build_base_image $HADOOP_VERSION $JAVA_VERSION
  done
done

# Build Spark images for each Hadoop and Java versions
for SPARK_TYPE in ${SPARK_TYPES[@]}; do
    for SPARK_VERSION in ${SPARK_VERSIONS[@]}; do
        for SPARK_HADOOP_VERSION in ${SPARK_HADOOP_VERSIONS[@]}; do
            for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
                for JAVA_VERSION in ${JAVA_VERSIONS[@]}; do
                    build_image $SPARK_TYPE $SPARK_VERSION $SPARK_HADOOP_VERSION $HADOOP_VERSION $JAVA_VERSION
                done
            done
        done
    done
done