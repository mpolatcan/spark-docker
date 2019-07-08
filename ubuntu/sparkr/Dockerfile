ARG SPARK_VERSION=2.3.0
ARG HADOOP_VERSION=2.7

FROM mpolatcan/spark:ubuntu-${SPARK_VERSION}-hadoop-${HADOOP_VERSION}

RUN apt-get update && \
    apt-get -y install --no-install-recommends dirmngr apt-transport-https ca-certificates software-properties-common gnupg2 && \
    apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' && \
    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/' && \
    apt-get update && \
    apt-get -y install --no-install-recommends r-base r-base-dev && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./entrypoint.sh"]