ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

# TODO Update Python version of Pyspark

FROM mpolatcan/spark:ubuntu-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

RUN apt-get update && \
    apt-get -y install --no-install-recommends python3.5 python3.5-dev python3.5-dev && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./entrypoiny.sh"]