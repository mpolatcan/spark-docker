ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

FROM mpolatcan/spark:alpine-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

ENV PYSPARK_PYTHON="python3"

RUN apk --update add --no-cache python3.6 python3.6-dev python3.6-doc python3-pip

ENTRYPOINT ["./entrypoint.sh"]