ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

FROM mpolatcan/spark:alpine-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

ENV PYSPARK_PYTHON="python3"

RUN apk --update add --no-cache python3 python3-dev postgresql-dev && \
    pip3 install setuptools wheel && \
    pip3 install pyspark jupyter psycopg2 sqlalchemy

ENTRYPOINT ["./entrypoint.sh"]