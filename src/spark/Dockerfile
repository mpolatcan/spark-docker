ARG JAVA_VERSION=""
ARG HADOOP_VERSION=""

FROM mpolatcan/spark:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG SPARK_VERSION=""
ARG SPARK_ZIP_FOLDER_NAME="spark-${SPARK_VERSION}-bin-without-hadoop"
ARG SPARK_DOWNLOAD_LINK="http://downloads.apache.org/spark/spark-${SPARK_VERSION}/${SPARK_ZIP_FOLDER_NAME}.tgz"

USER root
RUN wget ${SPARK_DOWNLOAD_LINK}  && \
    tar -xvzf ${SPARK_ZIP_FOLDER_NAME}.tgz -C ${HDUSER_HOME} && \
    mv ${SPARK_ZIP_FOLDER_NAME}/* ${SPARK_HOME} && \
    rm -r ${SPARK_ZIP_FOLDER_NAME} ${SPARK_ZIP_FOLDER_NAME}.tgz&& \
    chown -R hduser:hadoop ${SPARK_HOME}

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]