ARG JAVA_VERSION=""
ARG HADOOP_VERSION=""

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG LIVY_VERSION=""
ARG LIVY_ZIP_FOLDER_NAME="apachelivy-${LIVY_VERSION}-incubating-bin"
ARG LIVY_DOWNLOAD_LINK="http://downloads.apache.org/incubator/livy/${LIVY_VERSION}-incubating/${LIVY_ZIP_FOLDER_NAME}.zip"

ENV SPARK_HOME="${HDUSER_HOME}/spark" \
    LIVY_HOME="${HDUSER_HOME}/livy"
ENV SPARK_CONF_DIR="${SPARK_HOME}/conf" \
    LIVY_CONF_DIR="${LIVY_HOME}/conf" \
    SPARK_DAEMONS="NULL" \
    PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin:$LIVY_HOME/bin

ADD entrypoint.sh ${HDUSER_HOME}/spark_entrypoint.sh
ADD config_loader.sh ${HDUSER_HOME}/spark_config_loader.sh

USER root
RUN mkdir -p ${SPARK_HOME} ${LIVY_HOME} && \
    chmod +x spark_config_loader.sh spark_entrypoint.sh && \
    wget ${LIVY_DOWNLOAD_LINK} && \
    unzip ${LIVY_ZIP_FOLDER_NAME}.zip && \
    mv ${LIVY_ZIP_FOLDER_NAME}/* ${LIVY_HOME} && \
    rm -r ${LIVY_ZIP_FOLDER_NAME} ${LIVY_ZIP_FOLDER_NAME}.zip && \
    chown -R hduser:hadoop ${LIVY_HOME}
