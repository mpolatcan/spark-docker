ARG JAVA_VERSION=""
ARG HADOOP_VERSION=""

FROM mpolatcan/spark:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG SPARK_VERSION=""
ARG SPARK_HADOOP_VERSION=""
ARG SPARK_ZIP_FOLDER_NAME="spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION}"
ARG SPARK_DOWNLOAD_LINK="http://www-eu.apache.org/dist/spark/spark-${SPARK_VERSION}/${SPARK_ZIP_FOLDER_NAME}.tgz"

USER root
RUN wget ${SPARK_DOWNLOAD_LINK} && \
    tar -xvzf ${SPARK_ZIP_FOLDER_NAME}.tgz -C ${HDUSER_HOME} && \
    rm ${SPARK_ZIP_FOLDER_NAME}.tgz && \
    mv ${HDUSER_HOME}/${SPARK_ZIP_FOLDER_NAME}/* ${SPARK_HOME} && \
    rm -r ${HDUSER_HOME}/${SPARK_ZIP_FOLDER_NAME} && \
    chown -R hduser:hadoop ${SPARK_HOME}

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]