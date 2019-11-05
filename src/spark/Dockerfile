ARG JAVA_VERSION=""
ARG HADOOP_VERSION=""

FROM mpolatcan/spark:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG SPARK_VERSION=""
ARG SPARK_HADOOP_VERSION=""

USER root
RUN wget http://www-eu.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION}.tgz && \
    tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION}.tgz -C ${HDUSER_HOME} && \
    rm spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION}.tgz && \
    mv ${HDUSER_HOME}/spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION}/* ${SPARK_HOME} && \
    rm -r ${HDUSER_HOME}/spark-${SPARK_VERSION}-bin-hadoop${SPARK_HADOOP_VERSION} && \
    chown -R hduser:hadoop ${SPARK_HOME}

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]