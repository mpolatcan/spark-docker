.PHONY: publish-all
publish-all:
	$(MAKE) publish-spark publish-pyspark publish-sparkr

.PHONY: publish-spark
publish-spark:
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=spark spark_version=2.1.3 hadoop_version=2.3
	$(MAKE) publish-spark-helper dist=alpine spark_type=spark spark_version=2.1.3 hadoop_version=2.3

.PHONY: publish-sparkr
publish-sparkr:
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=sparkr spark_version=2.1.3 hadoop_version=2.3
	$(MAKE) publish-spark-helper dist=alpine spark_type=sparkr spark_version=2.1.3 hadoop_version=2.3

.PHONY: publish-pyspark
publish-pyspark:
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.3.1 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.3.1 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.2.2 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.2.2 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.1.3 hadoop_version=2.7
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.1.3 hadoop_version=2.6
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.1.3 hadoop_version=2.4
	$(MAKE) publish-spark-helper dist=ubuntu spark_type=pyspark spark_version=2.1.3 hadoop_version=2.3
	$(MAKE) publish-spark-helper dist=alpine spark_type=pyspark spark_version=2.1.3 hadoop_version=2.3

.PHONY: publish-spark-helper
publish-spark-helper:
	sudo docker build -q -t mpolatcan/$(spark_type):$(dist)-$(spark_version)-hadoop-$(hadoop_version) --build-arg SPARK_VERSION=$(spark_version) --build-arg HADOOP_VERSION=$(hadoop_version) ./$(dist)/$(spark_type)/
	sudo docker push mpolatcan/$(spark_type):$(dist)-$(spark_version)-hadoop-$(hadoop_version)
	sudo docker rmi $$(sudo docker images -q)