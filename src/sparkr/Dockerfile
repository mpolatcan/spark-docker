ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7
ARG JAVA_VERSION=8

FROM mpolatcan/spark:${SPARK_VERSION}-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

RUN apt-get update && \
    apt-get -y install --no-install-recommends apt-transport-https software-properties-common libopenblas-base r-base r-base-dev && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./entrypoint.sh"]