ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

FROM mpolatcan/spark:ubuntu-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

ENV PYSPARK_PYTHON="python3"

RUN apt-get update && \
    apt-get -y install --no-install-recommends python3.6 python3.6-dev python3.6-dev python3-pip && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./entrypoint.sh"]