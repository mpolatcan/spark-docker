.PHONY: publish-all
publish-all:
	$(MAKE) publish-spark publish-pyspark publish-sparkr

.PHONY: publish-spark
publish-spark:
	sudo docker build -q -t mpolatcan/spark:ubuntu-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/spark:ubuntu-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:alpine-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/spark:alpine-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/spark:ubuntu-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:alpine-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/spark:alpine-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/spark:ubuntu-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:alpine-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/spark:alpine-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/spark:ubuntu-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:alpine-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/spark:alpine-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/spark:ubuntu-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:alpine-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/spark:alpine-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/spark:ubuntu-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:alpine-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/spark:alpine-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/spark:ubuntu-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:alpine-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/spark:alpine-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/spark:ubuntu-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/spark:alpine-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/spark:alpine-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/spark:ubuntu-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:alpine-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/spark:alpine-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/spark:ubuntu-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:alpine-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/spark:alpine-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/spark:ubuntu-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:alpine-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/spark:alpine-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:ubuntu-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/spark:ubuntu-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/spark:alpine-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/spark:alpine-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/spark:ubuntu-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/spark:ubuntu-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:alpine-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/spark:alpine-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/spark:ubuntu-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/spark:ubuntu-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:alpine-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/spark:alpine-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/spark:ubuntu-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/spark
	sudo docker push mpolatcan/spark:ubuntu-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/spark:ubuntu-1.6.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/spark:alpine-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./alpine/spark
	sudo docker push mpolatcan/spark:alpine-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/spark:alpine-1.6.3-hadoop-2.3

.PHONY: publish-sparkr
publish-sparkr:
	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:alpine-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:alpine-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:alpine-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:alpine-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:alpine-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:alpine-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:alpine-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:alpine-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/sparkr:alpine-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:alpine-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:alpine-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:ubuntu-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/sparkr:alpine-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:alpine-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:alpine-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/sparkr:alpine-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:alpine-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/sparkr:alpine-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/sparkr
	sudo docker push mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:ubuntu-1.6.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/sparkr:alpine-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./alpine/sparkr
	sudo docker push mpolatcan/sparkr:alpine-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/sparkr:alpine-1.6.3-hadoop-2.3


.PHONY: publish-pyspark
publish-pyspark:
	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.3.1-hadoop-2.7 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.7 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.3.1-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:alpine-2.3.1-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.3.1-hadoop-2.6 --build-arg SPARK_VERSION=2.3.1 --build-arg HADOOP_VERSION=2.6 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.3.1-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:alpine-2.3.1-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.2.2-hadoop-2.7 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.7 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.2.2-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:alpine-2.2.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.2.2-hadoop-2.6 --build-arg SPARK_VERSION=2.2.2 --build-arg HADOOP_VERSION=2.6 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.2.2-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:alpine-2.2.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.1.3-hadoop-2.7 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.7 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.1.3-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:alpine-2.1.3-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.1.3-hadoop-2.6 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.6 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.1.3-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:alpine-2.1.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.1.3-hadoop-2.4 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.4 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.1.3-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:alpine-2.1.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.1.3-hadoop-2.3 --build-arg SPARK_VERSION=2.1.3 --build-arg HADOOP_VERSION=2.3 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.1.3-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:alpine-2.1.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.0.2-hadoop-2.7 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.7 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.0.2-hadoop-2.7
	sudo docker rmi mpolatcan/pyspark:alpine-2.0.2-hadoop-2.7

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.0.2-hadoop-2.6 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.6 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.0.2-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:alpine-2.0.2-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.0.2-hadoop-2.4 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.4 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.0.2-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:alpine-2.0.2-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:ubuntu-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/pyspark:alpine-2.0.2-hadoop-2.3 --build-arg SPARK_VERSION=2.0.2 --build-arg HADOOP_VERSION=2.3 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-2.0.2-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:alpine-2.0.2-hadoop-2.3

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:alpine-1.6.3-hadoop-2.6 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.6 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-1.6.3-hadoop-2.6
	sudo docker rmi mpolatcan/pyspark:alpine-1.6.3-hadoop-2.6

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:alpine-1.6.3-hadoop-2.4 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.4 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-1.6.3-hadoop-2.4
	sudo docker rmi mpolatcan/pyspark:alpine-1.6.3-hadoop-2.4

	sudo docker build -q -t mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./ubuntu/pyspark
	sudo docker push mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:ubuntu-1.6.3-hadoop-2.3

	sudo docker build -q -t mpolatcan/pyspark:alpine-1.6.3-hadoop-2.3 --build-arg SPARK_VERSION=1.6.3 --build-arg HADOOP_VERSION=2.3 ./alpine/pyspark
	sudo docker push mpolatcan/pyspark:alpine-1.6.3-hadoop-2.3
	sudo docker rmi mpolatcan/pyspark:alpine-1.6.3-hadoop-2.3