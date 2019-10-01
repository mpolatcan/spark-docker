ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7
ENV PYSPARK_PYTHON="python3"

FROM mpolatcan/spark:ubuntu-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

RUN apt-get update && \
    apt-get -y install --no-install-recommends python3-pip python3.6 python3.6-dev python3.6-dev && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./entrypoint.sh"]