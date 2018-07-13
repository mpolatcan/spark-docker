ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

# TODO Update Python version of Pyspark

FROM mpolatcan/spark:alpine-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

RUN apk --update add --no-cache python3 python3-dev python3-doc

ENTRYPOINT ["./entrypoint.sh"]