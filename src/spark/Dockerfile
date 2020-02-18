ARG JAVA_VERSION=""
ARG HADOOP_VERSION=""

FROM mpolatcan/spark:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG SPARK_VERSION=""
ARG SPARK_ZIP_FOLDER_NAME="spark-${SPARK_VERSION}-bin-without-hadoop"
ARG SPARK_DOWNLOAD_LINK="http://www-eu.apache.org/dist/spark/spark-${SPARK_VERSION}/${SPARK_ZIP_FOLDER_NAME}.tgz"
ARG SPARK_HIVE_JAR_DOWNLOAD_LINK="https://repo1.maven.org/maven2/org/apache/spark/spark-hive_2.11/${SPARK_VERSION}/spark-hive_2.11-${SPARK_VERSION}.jar"

USER root
RUN wget ${SPARK_DOWNLOAD_LINK} ${SPARK_HIVE_JAR_DOWNLOAD_LINK} && \
    tar -xvzf ${SPARK_ZIP_FOLDER_NAME}.tgz -C ${HDUSER_HOME} && \
    rm ${SPARK_ZIP_FOLDER_NAME}.tgz && \
    mv ${HDUSER_HOME}/${SPARK_ZIP_FOLDER_NAME}/* ${SPARK_HOME} && \
    mv ${HDUSER_HOME}/spark-hive_2.11-${SPARK_VERSION}.jar ${SPARK_HOME}/jars && \
    rm -r ${HDUSER_HOME}/${SPARK_ZIP_FOLDER_NAME} && \
    chown -R hduser:hadoop ${SPARK_HOME}

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]