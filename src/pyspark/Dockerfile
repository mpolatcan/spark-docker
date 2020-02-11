ARG SPARK_VERSION=""
ARG HADOOP_VERSION=""
ARG JAVA_VERSION=""

FROM mpolatcan/spark:${SPARK_VERSION}-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

ARG SPARK_VERSION=""

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV PYSPARK_VIRTUALENV="${HDUSER_HOME}/hduser_venv"
ENV PYTHONPATH="${PYSPARK_VIRTUALENV}/bin/python3" \
    PYSPARK_PYTHON="${PYSPARK_VIRTUALENV}/bin/python3" \
    PYSPARK_DRIVER_PYTHON="${PYSPARK_VIRTUALENV}/bin/python3" \
    PATH=${PYSPARK_VIRTUALENV}/bin:$PATH

USER root
RUN apt-get update && \
    apt-get -y install --no-install-recommends python3 python3-dev python3-pip && \
    pip3 install virtualenv && \
    mkdir -p ${PYSPARK_VIRTUALENV} && \
    virtualenv -p python3 ${PYSPARK_VIRTUALENV} && \
    spark_version=${SPARK_VERSION} && ${PYSPARK_VIRTUALENV}/bin/pip3 install pyspark~=${spark_version%.*}.0 && \
    chown -R hduser:hadoop ${PYSPARK_VIRTUALENV} && \
    rm -rf /var/lib/apt/lists/*

USER hduser
ENTRYPOINT ["./spark_entrypoint.sh", "spark"]