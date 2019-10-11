ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7
ARG JAVA_VERSION=8

FROM mpolatcan/spark:${SPARK_VERSION}-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

ENV PYSPARK_PYTHON="python3"

USER root
RUN apt-get update && \
    apt-get -y install --no-install-recommends python3 python3-dev python3-pip libpq-dev && \
    pip3 install setuptools wheel && \
    pip3 install pyspark jupyter psycopg2 sqlalchemy && \
    rm -rf /var/lib/apt/lists/*

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]