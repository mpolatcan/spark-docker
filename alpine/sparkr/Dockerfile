ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

FROM mpolatcan/spark:alpine-${SPARK_VERSION}-hadoop${HADOOP_VERSION}

RUN apk --update add --no-cache R R-dev R-doc

ENTRYPOINT ["./entrypoint.sh"]