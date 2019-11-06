#!/usr/bin/env bash
function load_config() {
  if [[ "$2" != "NULL" && "$4" == "spark" ]]; then
      printf "$1\t$2\n" >> "${SPARK_CONF_DIR}/$3"
  elif [[ "$2" != "NULL" && "$4" == "livy" ]]; then
      printf "$1 = $2\n" >> "${LIVY_CONF_DIR}/$3"
  fi
}

load_config "spark.default.parallelism" ${SPARK_DEFAULT_PARALLELISM} "spark-defaults.conf" "spark"
load_config "spark.driver.cores" ${SPARK_DRIVER_CORES} "spark-defaults.conf" "spark"
load_config "spark.driver.maxResultSize" ${SPARK_DRIVER_MAXRESULTSIZE} "spark-defaults.conf" "spark"
load_config "spark.driver.memory" ${SPARK_DRIVER_MEMORY} "spark-defaults.conf" "spark"
load_config "spark.driver.memoryOverhead" ${SPARK_DRIVER_MEMORYOVERHEAD} "spark-defaults.conf" "spark"
load_config "spark.driver.supervise" ${SPARK_DRIVER_SUPERVISE} "spark-defaults.conf" "spark"
load_config "spark.driver.extraClassPath" ${SPARK_DRIVER_EXTRACLASSPATH} "spark-defaults.conf" "spark"
load_config "spark.driver.extraJavaOptions" ${SPARK_DRIVER_EXTRAJAVAOPTIONS} "spark-defaults.conf" "spark"
load_config "spark.driver.extraLibraryPath" ${SPARK_DRIVER_EXTRALIBRARYPATH} "spark-defaults.conf" "spark"
load_config "spark.driver.userClassPathFirst" ${SPARK_DRIVER_USERCLASSPATHFIRST} "spark-defaults.conf" "spark"
load_config "spark.driver.blockManager.port" ${SPARK_DRIVER_BLOCKMANAGER_PORT} "spark-defaults.conf" "spark"
load_config "spark.driver.bindAddress" ${SPARK_DRIVER_BINDADDRESS} "spark-defaults.conf" "spark"
load_config "spark.driver.host" ${SPARK_DRIVER_HOST} "spark-defaults.conf" "spark"
load_config "spark.driver.port" ${SPARK_DRIVER_PORT} "spark-defaults.conf" "spark"
load_config "spark.executor.memory" ${SPARK_EXECUTOR_MEMORY} "spark-defaults.conf" "spark"
load_config "spark.executor.memoryOverhead" ${SPARK_EXECUTOR_MEMORYOVERHEAD} "spark-defaults.conf" "spark"
load_config "spark.executor.extraClassPath" ${SPARK_EXECUTOR_EXTRACLASSPATH} "spark-defaults.conf" "spark"
load_config "spark.executor.extraJavaOptions" ${SPARK_EXECUTOR_EXTRAJAVAOPTIONS} "spark-defaults.conf" "spark"
load_config "spark.executor.extraLibraryPath" ${SPARK_EXECUTOR_EXTRALIBRARYPATH} "spark-defaults.conf" "spark"
load_config "spark.executor.userClassPathFirst" ${SPARK_EXECUTOR_USERCLASSPATHFIRST} "spark-defaults.conf" "spark"
load_config "spark.executor.logs.rolling.maxRetainedFiles" ${SPARK_EXECUTOR_LOGS_ROLLING_MAXRETAINEDFILES} "spark-defaults.conf" "spark"
load_config "spark.executor.logs.rolling.enableCompression" ${SPARK_EXECUTOR_LOGS_ROLLING_ENABLECOMPRESSION} "spark-defaults.conf" "spark"
load_config "spark.executor.logs.rolling.maxSize" ${SPARK_EXECUTOR_LOGS_ROLLING_MAXSIZE} "spark-defaults.conf" "spark"
load_config "spark.executor.logs.rolling.strategy" ${SPARK_EXECUTOR_LOGS_ROLLING_STRATEGY} "spark-defaults.conf" "spark"
load_config "spark.executor.logs.rolling.time.interval" ${SPARK_EXECUTOR_LOGS_ROLLING_TIME_INTERVAL} "spark-defaults.conf" "spark"
load_config "spark.executor.pyspark.memory" ${SPARK_EXECUTOR_PYSPARK_MEMORY} "spark-defaults.conf" "spark"
load_config "spark.executor.cores" ${SPARK_EXECUTOR_CORES} "spark-defaults.conf" "spark"
load_config "spark.executor.heartbeatInterval" ${SPARK_EXECUTOR_HEARTBEATINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.executor.instances" ${SPARK_EXECUTOR_INSTANCES} "spark-defaults.conf" "spark"
load_config "spark.extraListeners" ${SPARK_EXTRALISTENERS} "spark-defaults.conf" "spark"
load_config "spark.local.dir" ${SPARK_LOCAL_DIR} "spark-defaults.conf" "spark"
load_config "spark.logConf" ${SPARK_LOGCONF} "spark-defaults.conf" "spark"
load_config "spark.master" ${SPARK_MASTER} "spark-defaults.conf" "spark"
load_config "spark.submit.deployMode" ${SPARK_SUBMIT_DEPLOYMODE} "spark-defaults.conf" "spark"
load_config "spark.submit.pyFiles" ${SPARK_SUBMIT_PYFILES} "spark-defaults.conf" "spark"
load_config "spark.log.callerContext" ${SPARK_LOG_CALLERCONTEXT} "spark-defaults.conf" "spark"
load_config "spark.redaction.regex" ${SPARK_REDACTION_REGEX} "spark-defaults.conf" "spark"
load_config "spark.python.profile" ${SPARK_PYTHON_PROFILE} "spark-defaults.conf" "spark"
load_config "spark.python.profile.dump" ${SPARK_PYTHON_PROFILE_DUMP} "spark-defaults.conf" "spark"
load_config "spark.python.worker.memory" ${SPARK_PYTHON_WORKER_MEMORY} "spark-defaults.conf" "spark"
load_config "spark.python.worker.reuse" ${SPARK_PYTHON_WORKER_REUSE} "spark-defaults.conf" "spark"
load_config "spark.files" ${SPARK_FILES} "spark-defaults.conf" "spark"
load_config "spark.files.fetchTimeout" ${SPARK_FILES_FETCHTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.files.useFetchCache" ${SPARK_FILES_USEFETCHCACHE} "spark-defaults.conf" "spark"
load_config "spark.files.overwrite" ${SPARK_FILES_OVERWRITE} "spark-defaults.conf" "spark"
load_config "spark.files.maxPartitionBytes" ${SPARK_FILES_MAXPARTITIONBYTES} "spark-defaults.conf" "spark"
load_config "spark.files.openCostInBytes" ${SPARK_FILES_OPENCOSTINBYTES} "spark-defaults.conf" "spark"
load_config "spark.jars" ${SPARK_JARS} "spark-defaults.conf" "spark"
load_config "spark.jars.packages" ${SPARK_JARS_PACKAGES} "spark-defaults.conf" "spark"
load_config "spark.jars.excludes" ${SPARK_JARS_EXCLUDES} "spark-defaults.conf" "spark"
load_config "spark.jars.ivy" ${SPARK_JARS_IVY} "spark-defaults.conf" "spark"
load_config "spark.jars.ivySettings" ${SPARK_JARS_IVYSETTINGS} "spark-defaults.conf" "spark"
load_config "spark.jars.repositories" ${SPARK_JARS_REPOSITORIES} "spark-defaults.conf" "spark"
load_config "spark.pyspark.driver.python" ${SPARK_PYSPARK_DRIVER_PYTHON} "spark-defaults.conf" "spark"
load_config "spark.pyspark.python" ${SPARK_PYSPARK_PYTHON} "spark-defaults.conf" "spark"
load_config "spark.reducer.maxSizeInFlight" ${SPARK_REDUCER_MAXSIZEINFLIGHT} "spark-defaults.conf" "spark"
load_config "spark.reducer.maxReqsInFlight" ${SPARK_REDUCER_MAXREQSINFLIGHT} "spark-defaults.conf" "spark"
load_config "spark.reducer.maxBlocksInFlightPerAddress" ${SPARK_REDUCER_MAXBLOCKSINFLIGHTPERADDRESS} "spark-defaults.conf" "spark"
load_config "spark.maxRemoteBlockSizeFetchToMem" ${SPARK_MAXREMOTEBLOCKSIZEFETCHTOMEM} "spark-defaults.conf" "spark"
load_config "spark.shuffle.compress" ${SPARK_SHUFFLE_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.shuffle.file.buffer" ${SPARK_SHUFFLE_FILE_BUFFER} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.maxRetries" ${SPARK_SHUFFLE_IO_MAXRETRIES} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.numConnectionsPerPeer" ${SPARK_SHUFFLE_IO_NUMCONNECTIONSPERPEER} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.preferDirectBufs" ${SPARK_SHUFFLE_IO_PREFERDIRECTBUFS} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.retryWait" ${SPARK_SHUFFLE_IO_RETRYWAIT} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.encryption.enabled" ${SPARK_SHUFFLE_IO_ENCRYPTION_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.encryption.keySizeBits" ${SPARK_SHUFFLE_IO_ENCRYPTION_KEYSIZEBITS} "spark-defaults.conf" "spark"
load_config "spark.shuffle.io.encryption.keygen.algorithm" ${SPARK_SHUFFLE_IO_ENCRYPTION_KEYGEN_ALGORITHM} "spark-defaults.conf" "spark"
load_config "spark.shuffle.service.enabled" ${SPARK_SHUFFLE_SERVICE_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.shuffle.service.port" ${SPARK_SHUFFLE_SERVICE_PORT} "spark-defaults.conf" "spark"
load_config "spark.shuffle.service.index.cache.size" ${SPARK_SHUFFLE_SERVICE_INDEX_CACHE_SIZE} "spark-defaults.conf" "spark"
load_config "spark.shuffle.maxChunksBeingTransferred" ${SPARK_SHUFFLE_MAXCHUNKSBEINGTRANSFERRED} "spark-defaults.conf" "spark"
load_config "spark.shuffle.sort.bypassMergeThreshold" ${SPARK_SHUFFLE_SORT_BYPASSMERGETHRESHOLD} "spark-defaults.conf" "spark"
load_config "spark.shuffle.spill.compress" ${SPARK_SHUFFLE_SPILL_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.shuffle.registration.timeout" ${SPARK_SHUFFLE_REGISTRATION_TIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.shuffle.registration.maxAttempts" ${SPARK_SHUFFLE_REGISTRATION_MAXATTEMPTS} "spark-defaults.conf" "spark"
load_config "spark.shuffle.memoryFraction" ${SPARK_SHUFFLE_MEMORYFRACTION} "spark-defaults.conf" "spark"
load_config "spark.eventlog.logBlockUpdates.enabled" ${SPARK_EVENTLOG_LOGBLOCKUPDATES_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.eventlog.longForm.enabled" ${SPARK_EVENTLOG_LONGFORM_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.eventlog.compress" ${SPARK_EVENTLOG_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.eventlog.dir" ${SPARK_EVENTLOG_DIR} "spark-defaults.conf" "spark"
load_config "spark.eventlog.enabled" ${SPARK_EVENTLOG_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.eventlog.overwrite" ${SPARK_EVENTLOG_OVERWRITE} "spark-defaults.conf" "spark"
load_config "spark.eventlog.buffer.kb" ${SPARK_EVENTLOG_BUFFER_KB} "spark-defaults.conf" "spark"
load_config "spark.ui.dagGraph.retainedRootRDDs" ${SPARK_UI_DAGGRAPH_RETAINEDROOTRDDS} "spark-defaults.conf" "spark"
load_config "spark.ui.enabled" ${SPARK_UI_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.ui.killEnabled" ${SPARK_UI_KILLENABLED} "spark-defaults.conf" "spark"
load_config "spark.ui.liveUpdate.period" ${SPARK_UI_LIVEUPDATE_PERIOD} "spark-defaults.conf" "spark"
load_config "spark.ui.liveUpdate.minFlushPeriod" ${SPARK_UI_LIVEUPDATE_MINFLUSHPERIOD} "spark-defaults.conf" "spark"
load_config "spark.ui.port" ${SPARK_UI_PORT} "spark-defaults.conf" "spark"
load_config "spark.ui.retainedJobs" ${SPARK_UI_RETAINEDJOBS} "spark-defaults.conf" "spark"
load_config "spark.ui.retainedStages" ${SPARK_UI_RETAINEDSTAGES} "spark-defaults.conf" "spark"
load_config "spark.ui.retainedTasks" ${SPARK_UI_RETAINEDTASKS} "spark-defaults.conf" "spark"
load_config "spark.ui.reverseProxy" ${SPARK_UI_REVERSEPROXY} "spark-defaults.conf" "spark"
load_config "spark.ui.reverseProxyUrl" ${SPARK_UI_REVERSEPROXYURL} "spark-defaults.conf" "spark"
load_config "spark.ui.showConsoleProgress" ${SPARK_UI_SHOWCONSOLEPROGRESS} "spark-defaults.conf" "spark"
load_config "spark.ui.retainedDeadExecutors" ${SPARK_UI_RETAINEDDEADEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.ui.filters" ${SPARK_UI_FILTERS} "spark-defaults.conf" "spark"
load_config "spark.ui.view.acls" ${SPARK_UI_VIEW_ACLS} "spark-defaults.conf" "spark"
load_config "spark.ui.view.acls.groups" ${SPARK_UI_VIEW_ACLS_GROUPS} "spark-defaults.conf" "spark"
load_config "spark.worker.ui.retainedExecutors" ${SPARK_WORKER_UI_RETAINEDEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.worker.ui.retainedDrivers" ${SPARK_WORKER_UI_RETAINEDDRIVERS} "spark-defaults.conf" "spark"
load_config "spark.sql.ui.retainedExecutions" ${SPARK_SQL_UI_RETAINEDEXECUTIONS} "spark-defaults.conf" "spark"
load_config "spark.streaming.ui.retainedBatches" ${SPARK_STREAMING_UI_RETAINEDBATCHES} "spark-defaults.conf" "spark"
load_config "spark.streaming.backpressure.enabled" ${SPARK_STREAMING_BACKPRESSURE_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.streaming.backpressure.initialRate" ${SPARK_STREAMING_BACKPRESSURE_INITIALRATE} "spark-defaults.conf" "spark"
load_config "spark.streaming.blockInterval" ${SPARK_STREAMING_BLOCKINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.streaming.receiver.maxRate" ${SPARK_STREAMING_RECEIVER_MAXRATE} "spark-defaults.conf" "spark"
load_config "spark.streaming.receiver.writeAheadLog.enable" ${SPARK_STREAMING_RECEIVER_WRITEAHEADLOG_ENABLE} "spark-defaults.conf" "spark"
load_config "spark.streaming.receiver.writeAheadLog.closeFileAfterWrite" ${SPARK_STREAMING_RECEIVER_WRITEAHEADLOG_CLOSEFILEAFTERWRITE} "spark-defaults.conf" "spark"
load_config "spark.streaming.unpersist" ${SPARK_STREAMING_UNPERSIST} "spark-defaults.conf" "spark"
load_config "spark.streaming.stopGracefullyOnShutdown" ${SPARK_STREAMING_STOPGRACEFULLYONSHUTDOWN} "spark-defaults.conf" "spark"
load_config "spark.streaming.kafka.maxRatePerPartition" ${SPARK_STREAMING_KAFKA_MAXRATEPERPARTITION} "spark-defaults.conf" "spark"
load_config "spark.streaming.kafka.maxRetries" ${SPARK_STREAMING_KAFKA_MAXRETRIES} "spark-defaults.conf" "spark"
load_config "spark.streaming.driver.writeAheadLog.closeFileAfterWrite" ${SPARK_STREAMING_DRIVER_WRITEAHEADLOG_CLOSEFILEAFTERWRITE} "spark-defaults.conf" "spark"
load_config "spark.broadcast.compress" ${SPARK_BROADCAST_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.broadcast.blockSize" ${SPARK_BROADCAST_BLOCKSIZE} "spark-defaults.conf" "spark"
load_config "spark.broadcast.checksum" ${SPARK_BROADCAST_CHECKSUM} "spark-defaults.conf" "spark"
load_config "spark.checkpoint.compress" ${SPARK_CHECKPOINT_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.io.compression.codec" ${SPARK_IO_COMPRESSION_CODEC} "spark-defaults.conf" "spark"
load_config "spark.io.compression.lz4.blockSize" ${SPARK_IO_COMPRESSION_LZ4_BLOCKSIZE} "spark-defaults.conf" "spark"
load_config "spark.io.compression.snappy.blockSize" ${SPARK_IO_COMPRESSION_SNAPPY_BLOCKSIZE} "spark-defaults.conf" "spark"
load_config "spark.io.compression.zstd.level" ${SPARK_IO_COMPRESSION_ZSTD_LEVEL} "spark-defaults.conf" "spark"
load_config "spark.io.compression.zstd.bufferSize" ${SPARK_IO_COMPRESSION_ZSTD_BUFFERSIZE} "spark-defaults.conf" "spark"
load_config "spark.kryo.classesToRegister" ${SPARK_KRYO_CLASSESTOREGISTER} "spark-defaults.conf" "spark"
load_config "spark.kryo.referenceTracking" ${SPARK_KRYO_REFERENCETRACKING} "spark-defaults.conf" "spark"
load_config "spark.kryo.registrationRequired" ${SPARK_KRYO_REGISTRATIONREQUIRED} "spark-defaults.conf" "spark"
load_config "spark.kryo.registrator" ${SPARK_KRYO_REGISTRATOR} "spark-defaults.conf" "spark"
load_config "spark.kryo.unsafe" ${SPARK_KRYO_UNSAFE} "spark-defaults.conf" "spark"
load_config "spark.kryoserializer.buffer" ${SPARK_KRYOSERIALIZER_BUFFER} "spark-defaults.conf" "spark"
load_config "spark.kryoserializer.buffer.max" ${SPARK_KRYOSERIALIZER_BUFFER_MAX} "spark-defaults.conf" "spark"
load_config "spark.rdd.compress" ${SPARK_RDD_COMPRESS} "spark-defaults.conf" "spark"
load_config "spark.serializer" ${SPARK_SERIALIZER} "spark-defaults.conf" "spark"
load_config "spark.serializer.objectStreamReset" ${SPARK_SERIALIZER_OBJECTSTREAMRESET} "spark-defaults.conf" "spark"
load_config "spark.memory.fraction" ${SPARK_MEMORY_FRACTION} "spark-defaults.conf" "spark"
load_config "spark.memory.storageFraction" ${SPARK_MEMORY_STORAGEFRACTION} "spark-defaults.conf" "spark"
load_config "spark.memory.offHeap.enabled" ${SPARK_MEMORY_OFFHEAP_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.memory.offHeap.size" ${SPARK_MEMORY_OFFHEAP_SIZE} "spark-defaults.conf" "spark"
load_config "spark.memory.useLegacyMode" ${SPARK_MEMORY_USELEGACYMODE} "spark-defaults.conf" "spark"
load_config "spark.storage.memoryFraction" ${SPARK_STORAGE_MEMORYFRACTION} "spark-defaults.conf" "spark"
load_config "spark.storage.unrollFraction" ${SPARK_STORAGE_UNROLLFRACTION} "spark-defaults.conf" "spark"
load_config "spark.storage.replication.proactive" ${SPARK_STORAGE_REPLICATION_PROACTIVE} "spark-defaults.conf" "spark"
load_config "spark.storage.memoryMapThreshold" ${SPARK_STORAGE_MEMORYMAPTHRESHOLD} "spark-defaults.conf" "spark"
load_config "spark.cleaner.periodicGC.interval" ${SPARK_CLEANER_PERIODICGC_INTERVAL} "spark-defaults.conf" "spark"
load_config "spark.cleaner.referenceTracking" ${SPARK_CLEANER_REFERENCETRACKING} "spark-defaults.conf" "spark"
load_config "spark.cleaner.referenceTracking.blocking" ${SPARK_CLEANER_REFERENCETRACKING_BLOCKING} "spark-defaults.conf" "spark"
load_config "spark.cleaner.referenceTracking.blocking.shuffle" ${SPARK_CLEANER_REFERENCETRACKING_BLOCKING_SHUFFLE} "spark-defaults.conf" "spark"
load_config "spark.cleaner.referenceTracking.cleanCheckpoints" ${SPARK_CLEANER_REFERENCETRACKING_CLEANCHECKPOINTS} "spark-defaults.conf" "spark"
load_config "spark.hadoop.cloneConf" ${SPARK_HADOOP_CLONECONF} "spark-defaults.conf" "spark"
load_config "spark.hadoop.validateOutputSpecs" ${SPARK_HADOOP_VALIDATEOUTPUTSPECS} "spark-defaults.conf" "spark"
load_config "spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version" ${SPARK_HADOOP_MAPREDUCE_FILEOUTPUTCOMMITTER_ALGORITHM_VERSION} "spark-defaults.conf" "spark"
load_config "spark.rpc.message.maxSize" ${SPARK_RPC_MESSAGE_MAXSIZE} "spark-defaults.conf" "spark"
load_config "spark.rpc.io.backLog" ${SPARK_RPC_IO_BACKLOG} "spark-defaults.conf" "spark"
load_config "spark.rpc.numRetries" ${SPARK_RPC_NUMRETRIES} "spark-defaults.conf" "spark"
load_config "spark.rpc.retry.wait" ${SPARK_RPC_RETRY_WAIT} "spark-defaults.conf" "spark"
load_config "spark.rpc.askTimeout" ${SPARK_RPC_ASKTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.rpc.lookupTimeout" ${SPARK_RPC_LOOKUPTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.blockManager.port" ${SPARK_BLOCKMANAGER_PORT} "spark-defaults.conf" "spark"
load_config "spark.port.maxRetries" ${SPARK_PORT_MAXRETRIES} "spark-defaults.conf" "spark"
load_config "spark.cores.max" ${SPARK_CORES_MAX} "spark-defaults.conf" "spark"
load_config "spark.locality.wait" ${SPARK_LOCALITY_WAIT} "spark-defaults.conf" "spark"
load_config "spark.locality.wait.node" ${SPARK_LOCALITY_WAIT_NODE} "spark-defaults.conf" "spark"
load_config "spark.locality.wait.process" ${SPARK_LOCALITY_WAIT_PROCESS} "spark-defaults.conf" "spark"
load_config "spark.locality.wait.rack" ${SPARK_LOCALITY_WAIT_RACK} "spark-defaults.conf" "spark"
load_config "spark.scheduler.maxRegisteredResourcesWaitingTime" ${SPARK_SCHEDULER_MAXREGISTEREDRESOURCESWAITINGTIME} "spark-defaults.conf" "spark"
load_config "spark.scheduler.minRegisteredResourcesRation" ${SPARK_SCHEDULER_MINREGISTEREDRESOURCESRATION} "spark-defaults.conf" "spark"
load_config "spark.scheduler.mode" ${SPARK_SCHEDULER_MODE} "spark-defaults.conf" "spark"
load_config "spark.scheduler.revive.interval" ${SPARK_SCHEDULER_REVIVE_INTERVAL} "spark-defaults.conf" "spark"
load_config "spark.scheduler.listenerbus.eventqueue.capacity" ${SPARK_SCHEDULER_LISTENERBUS_EVENTQUEUE_CAPACITY} "spark-defaults.conf" "spark"
load_config "spark.scheduler.blacklist.unschedulableTaskSetTimeout" ${SPARK_SCHEDULER_BLACKLIST_UNSCHEDULABLETASKSETTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.blacklist.enabled" ${SPARK_BLACKLIST_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.blacklist.timeout" ${SPARK_BLACKLIST_TIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.blacklist.task.maxTaskAttemptsPerExecutor" ${SPARK_BLACKLIST_TASK_MAXTASKATTEMPTSPEREXECUTOR} "spark-defaults.conf" "spark"
load_config "spark.blacklist.task.maxTaskAttemptsPerNode" ${SPARK_BLACKLIST_TASK_MAXTASKATTEMPTSPERNODE} "spark-defaults.conf" "spark"
load_config "spark.blacklist.stage.maxFailedTaskPerExecutor" ${SPARK_BLACKLIST_STAGE_MAXFAILEDTASKPEREXECUTOR} "spark-defaults.conf" "spark"
load_config "spark.blacklist.stage.maxFailedExecutorsPerNode" ${SPARK_BLACKLIST_STAGE_MAXFAILEDEXECUTORSPERNODE} "spark-defaults.conf" "spark"
load_config "spark.blacklist.application.maxFailedTasksPerExecutor" ${SPARK_BLACKLIST_APPLICATION_MAXFAILEDTASKSPEREXECUTOR} "spark-defaults.conf" "spark"
load_config "spark.blacklist.application.maxFailedExecutorsPerNode" ${SPARK_BLACKLIST_APPLICATION_MAXFAILEDEXECUTORSPERNODE} "spark-defaults.conf" "spark"
load_config "spark.blacklist.application.fetchFailure.enabled" ${SPARK_BLACKLIST_APPLICATION_FETCHFAILURE_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.blacklist.killBlacklistedExecutors" ${SPARK_BLACKLIST_KILLBLACKLISTEDEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.speculation" ${SPARK_SPECULATION} "spark-defaults.conf" "spark"
load_config "spark.speculation.interval" ${SPARK_SPECULATION_INTERVAL} "spark-defaults.conf" "spark"
load_config "spark.speculation.multiplier" ${SPARK_SPECULATION_MULTIPLIER} "spark-defaults.conf" "spark"
load_config "spark.speculation.quantile" ${SPARK_SPECULATION_QUANTILE} "spark-defaults.conf" "spark"
load_config "spark.task.cpus" ${SPARK_TASK_CPUS} "spark-defaults.conf" "spark"
load_config "spark.task.maxFailures" ${SPARK_TASK_MAXFAILURES} "spark-defaults.conf" "spark"
load_config "spark.task.reaper.enabled" ${SPARK_TASK_REAPER_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.task.reaper.pollingInterval" ${SPARK_TASK_REAPER_POLLINGINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.task.reaper.threadDump" ${SPARK_TASK_REAPER_THREADDUMP} "spark-defaults.conf" "spark"
load_config "spark.task.reaper.killTimeout" ${SPARK_TASK_REAPER_KILLTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.stage.maxConsecutiveAttempts" ${SPARK_STAGE_MAXCONSECUTIVEATTEMPTS} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.enabled" ${SPARK_DYNAMICALLOCATION_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.executorIdleTimeout" ${SPARK_DYNAMICALLOCATION_EXECUTORIDLETIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.initialExecutors" ${SPARK_DYNAMICALLOCATION_INITIALEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.cachedExecutorIdleTimeout" ${SPARK_DYNAMICALLOCATION_CACHEDEXECUTORIDLETIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.maxExecutors" ${SPARK_DYNAMICALLOCATION_MAXEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.minExecutors" ${SPARK_DYNAMICALLOCATION_MINEXECUTORS} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.executorAllocationRatio" ${SPARK_DYNAMICALLOCATION_EXECUTORALLOCATIONRATIO} "spark-defaults.conf" "spark"
load_config "spark.dynamicAllocation.schedulerBacklogTimeout" ${SPARK_DYNAMICALLOCATION_SCHEDULERBACKLOGTIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.acls.enabled" ${SPARK_ACLS_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.admin.acls" ${SPARK_ADMIN_ACLS} "spark-defaults.conf" "spark"
load_config "spark.admin.acls.groups" ${SPARK_ADMIN_ACLS_GROUPS} "spark-defaults.conf" "spark"
load_config "spark.user.groups.mapping" ${SPARK_USER_GROUPS_MAPPING} "spark-defaults.conf" "spark"
load_config "spark.authenticate" ${SPARK_AUTHENTICATE} "spark-defaults.conf" "spark"
load_config "spark.authenticate.secret" ${SPARK_AUTHENTICATE_SECRET} "spark-defaults.conf" "spark"
load_config "spark.authenticate.enableSaslEncrpytion" ${SPARK_AUTHENTICATE_ENABLESASLENCRPYTION} "spark-defaults.conf" "spark"
load_config "spark.network.crypto.enabled" ${SPARK_NETWORK_CRYPTO_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.network.crypto.keyLength" ${SPARK_NETWORK_CRYPTO_KEYLENGTH} "spark-defaults.conf" "spark"
load_config "spark.network.crypto.keyFactoryAlgorithm" ${SPARK_NETWORK_CRYPTO_KEYFACTORYALGORITHM} "spark-defaults.conf" "spark"
load_config "spark.network.crypto.saslFallback" ${SPARK_NETWORK_CRYPTO_SASLFALLBACK} "spark-defaults.conf" "spark"
load_config "spark.network.sasl.serverAlwaysEncrypt" ${SPARK_NETWORK_SASL_SERVERALWAYSENCRYPT} "spark-defaults.conf" "spark"
load_config "spark.core.connection.ack.wait.timeout" ${SPARK_CORE_CONNECTION_ACK_WAIT_TIMEOUT} "spark-defaults.conf" "spark"
load_config "spark.modify.acls" ${SPARK_MODIFY_ACLS} "spark-defaults.conf" "spark"
load_config "spark.modify.acls.groups" ${SPARK_MODIFY_ACLS_GROUPS} "spark-defaults.conf" "spark"
load_config "spark.ssl.enabled" ${SPARK_SSL_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.ssl.enabledAlgorithms" ${SPARK_SSL_ENABLEDALGORITHMS} "spark-defaults.conf" "spark"
load_config "spark.ssl.keyPassword" ${SPARK_SSL_KEYPASSWORD} "spark-defaults.conf" "spark"
load_config "spark.ssl.keyStore" ${SPARK_SSL_KEYSTORE} "spark-defaults.conf" "spark"
load_config "spark.ssl.keyStorePassword" ${SPARK_SSL_KEYSTOREPASSWORD} "spark-defaults.conf" "spark"
load_config "spark.ssl.keyStoreType" ${SPARK_SSL_KEYSTORETYPE} "spark-defaults.conf" "spark"
load_config "spark.ssl.protocol" ${SPARK_SSL_PROTOCOL} "spark-defaults.conf" "spark"
load_config "spark.ssl.needClientAuth" ${SPARK_SSL_NEEDCLIENTAUTH} "spark-defaults.conf" "spark"
load_config "spark.ssl.trustStore" ${SPARK_SSL_TRUSTSTORE} "spark-defaults.conf" "spark"
load_config "spark.ssl.trustStorePassword" ${SPARK_SSL_TRUSTSTOREPASSWORD} "spark-defaults.conf" "spark"
load_config "spark.ssl.trustStoreType" ${SPARK_SSL_TRUSTSTORETYPE} "spark-defaults.conf" "spark"
load_config "spark.graphx.pregel.checkpointInterval" ${SPARK_GRAPHX_PREGEL_CHECKPOINTINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.deploy.recoveryMode" ${SPARK_DEPLOY_RECOVERYMODE} "spark-defaults.conf" "spark"
load_config "spark.deploy.zookeeper.url" ${SPARK_DEPLOY_ZOOKEEPER_URL} "spark-defaults.conf" "spark"
load_config "spark.deploy.zookeeper.dir" ${SPARK_DEPLOY_ZOOKEEPER_DIR} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.memory" ${SPARK_YARN_AM_MEMORY} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.cores" ${SPARK_YARN_AM_CORES} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.waitTime" ${SPARK_YARN_AM_WAITTIME} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.memoryOverhead" ${SPARK_YARN_AM_MEMORYOVERHEAD} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.extraJavaOptions" ${SPARK_YARN_AM_EXTRAJAVAOPTIONS} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.extraLibraryPath" ${SPARK_YARN_AM_EXTRALIBRARYPATH} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.attemptFailuresValidityInterval" ${SPARK_YARN_AM_ATTEMPTFAILURESVALIDITYINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.yarn.am.nodeLabelExpression" ${SPARK_YARN_AM_NODELABELEXPRESSION} "spark-defaults.conf" "spark"
load_config "spark.yarn.submit.file.replication" ${SPARK_YARN_SUBMIT_FILE_REPLICATION} "spark-defaults.conf" "spark"
load_config "spark.yarn.submit.waitAppCompletion" ${SPARK_YARN_SUBMIT_WAITAPPCOMPLETION} "spark-defaults.conf" "spark"
load_config "spark.yarn.stagingDir" ${SPARK_YARN_STAGINGDIR} "spark-defaults.conf" "spark"
load_config "spark.yarn.preserve.staging.files" ${SPARK_YARN_PRESERVE_STAGING_FILES} "spark-defaults.conf" "spark"
load_config "spark.yarn.scheduler.heartbeat.interval-ms" ${SPARK_YARN_SCHEDULER_HEARTBEAT_INTERVAL_MS} "spark-defaults.conf" "spark"
load_config "spark.yarn.scheduler.initial-allocation.interval" ${SPARK_YARN_SCHEDULER_INITIAL_ALLOCATION_INTERVAL} "spark-defaults.conf" "spark"
load_config "spark.yarn.max.executor.failures" ${SPARK_YARN_MAX_EXECUTOR_FAILURES} "spark-defaults.conf" "spark"
load_config "spark.yarn.historyServer.address" ${SPARK_YARN_HISTORYSERVER_ADDRESS} "spark-defaults.conf" "spark"
load_config "spark.yarn.dist.files" ${SPARK_YARN_DIST_FILES} "spark-defaults.conf" "spark"
load_config "spark.yarn.dist.jars" ${SPARK_YARN_DIST_JARS} "spark-defaults.conf" "spark"
load_config "spark.yarn.dist.forceDownloadSchemes" ${SPARK_YARN_DIST_FORCEDOWNLOADSCHEMES} "spark-defaults.conf" "spark"
load_config "spark.yarn.queue" ${SPARK_YARN_QUEUE} "spark-defaults.conf" "spark"
load_config "spark.yarn.jars" ${SPARK_YARN_JARS} "spark-defaults.conf" "spark"
load_config "spark.yarn.archive" ${SPARK_YARN_ARCHIVE} "spark-defaults.conf" "spark"
load_config "spark.yarn.containerLauncherMaxThreads" ${SPARK_YARN_CONTAINERLAUNCHERMAXTHREADS} "spark-defaults.conf" "spark"
load_config "spark.yarn.maxAppAttempts" ${SPARK_YARN_MAXAPPATTEMPTS} "spark-defaults.conf" "spark"
load_config "spark.yarn.executor.failuresValidityInterval" ${SPARK_YARN_EXECUTOR_FAILURESVALIDITYINTERVAL} "spark-defaults.conf" "spark"
load_config "spark.yarn.executor.nodeLabelExpression" ${SPARK_YARN_EXECUTOR_NODELABELEXPRESSION} "spark-defaults.conf" "spark"
load_config "spark.yarn.tags" ${SPARK_YARN_TAGS} "spark-defaults.conf" "spark"
load_config "spark.yarn.config.gatewayPath" ${SPARK_YARN_CONFIG_GATEWAYPATH} "spark-defaults.conf" "spark"
load_config "spark.yarn.config.replacementPath" ${SPARK_YARN_CONFIG_REPLACEMENTPATH} "spark-defaults.conf" "spark"
load_config "spark.yarn.rolledLog.includePattern" ${SPARK_YARN_ROLLEDLOG_INCLUDEPATTERN} "spark-defaults.conf" "spark"
load_config "spark.yarn.rolledLog.excludePattern" ${SPARK_YARN_ROLLEDLOG_EXCLUDEPATTERN} "spark-defaults.conf" "spark"
load_config "spark.yarn.blacklist.executor.launch.blacklisting.enabled" ${SPARK_YARN_BLACKLIST_EXECUTOR_LAUNCH_BLACKLISTING_ENABLED} "spark-defaults.conf" "spark"
load_config "spark.yarn.metrics.namespace" ${SPARK_YARN_METRICS_NAMESPACE} "spark-defaults.conf" "spark"
load_config "livy.keystore" ${LIVY_KEYSTORE} "livy.conf" "livy"
load_config "livy.keystore.password" ${LIVY_KEYSTORE_PASSWORD} "livy.conf" "livy"
load_config "livy.key-password" ${LIVY_KEY_PASSWORD} "livy.conf" "livy"
load_config "livy.hadoop.security.credential.provider.path" ${LIVY_HADOOP_SECURITY_CREDENTIAL_PROVIDER_PATH} "livy.conf" "livy"
load_config "livy.server.host" ${LIVY_SERVER_HOST} "livy.conf" "livy"
load_config "livy.server.port" ${LIVY_SERVER_PORT} "livy.conf" "livy"
load_config "livy.server.request-header.size" ${LIVY_SERVER_REQUEST_HEADER_SIZE} "livy.conf" "livy"
load_config "livy.server.response-header.size" ${LIVY_SERVER_RESPONSE_HEADER_SIZE} "livy.conf" "livy"
load_config "livy.server.session.timeout-check" ${LIVY_SERVER_SESSION_TIMEOUT_CHECK} "livy.conf" "livy"
load_config "livy.server.session.timeout" ${LIVY_SERVER_SESSION_TIMEOUT} "livy.conf" "livy"
load_config "livy.server.session.state-retain.sec" ${LIVY_SERVER_SESSION_STATE_RETAIN_SEC} "livy.conf" "livy"
load_config "livy.server.csrf-protection.enabled" ${LIVY_SERVER_CSRF_PROTECTION_ENABLED} "livy.conf" "livy"
load_config "livy.server.recovery.mode" ${LIVY_SERVER_RECOVERY_MODE} "livy.conf" "livy"
load_config "livy.server.recovery.state-store" ${LIVY_SERVER_RECOVERY_STATE_STORE} "livy.conf" "livy"
load_config "livy.server.recovery.state-store.url" ${LIVY_SERVER_RECOVERY_STATE_STORE_URL} "livy.conf" "livy"
load_config "livy.server.yarn.app-lookup-timeout" ${LIVY_SERVER_YARN_APP_LOOKUP_TIMEOUT} "livy.conf" "livy"
load_config "livy.server.yarn.app-leakage.check-timeout" ${LIVY_SERVER_YARN_APP_LEAKAGE_CHECK_TIMEOUT} "livy.conf" "livy"
load_config "livy.server.yarn.app-leakage.check-interval" ${LIVY_SERVER_YARN_APP_LEAKAGE_CHECK_INTERVAL} "livy.conf" "livy"
load_config "livy.server.yarn.poll-interval" ${LIVY_SERVER_YARN_POLL_INTERVAL} "livy.conf" "livy"
load_config "livy.server.request-log-retain.days" ${LIVY_SERVER_REQUEST_LOG_RETAIN_DAYS} "livy.conf" "livy"
load_config "livy.server.access-control.enabled" ${LIVY_SERVER_ACCESS_CONTROL_ENABLED} "livy.conf" "livy"
load_config "livy.server.access-control.allowed-users" ${LIVY_SERVER_ACCESS_CONTROL_ALLOWED_USERS} "livy.conf" "livy"
load_config "livy.server.access-control.modify-users" ${LIVY_SERVER_ACCESS_CONTROL_MODIFY_USERS} "livy.conf" "livy"
load_config "livy.server.access-control.view-users" ${LIVY_SERVER_ACCESS_CONTROL_VIEW_USERS} "livy.conf" "livy"
load_config "livy.server.auth.type" ${LIVY_SERVER_AUTH_TYPE} "livy.conf" "livy"
load_config "livy.server.auth.kerberos.principal" ${LIVY_SERVER_AUTH_KERBEROS_PRINCIPAL} "livy.conf" "livy"
load_config "livy.server.auth.kerberos.keytab" ${LIVY_SERVER_AUTH_KERBEROS_KEYTAB} "livy.conf" "livy"
load_config "livy.server.auth.kerberos.name-rules" ${LIVY_SERVER_AUTH_KERBEROS_NAME_RULES} "livy.conf" "livy"
load_config "livy.ui.basePath" ${LIVY_UI_BASEPATH} "livy.conf" "livy"
load_config "livy.ui.enabled" ${LIVY_UI_ENABLED} "livy.conf" "livy"
load_config "livy.spark.master" ${LIVY_SPARK_MASTER} "livy.conf" "livy"
load_config "livy.spark.deployMode" ${LIVY_SPARK_DEPLOYMODE} "livy.conf" "livy"
load_config "livy.impersonation.enabled" ${LIVY_IMPERSONATION_ENABLED} "livy.conf" "livy"
load_config "livy.cache-log.size" ${LIVY_CACHE_LOG_SIZE} "livy.conf" "livy"
load_config "livy.rsc.jars" ${LIVY_RSC_JARS} "livy.conf" "livy"
load_config "livy.repl.jars" ${LIVY_REPL_JARS} "livy.conf" "livy"
load_config "livy.repl.enable-hive-context" ${LIVY_REPL_ENABLE_HIVE_CONTEXT} "livy.conf" "livy"
load_config "livy.pyspark.archives" ${LIVY_PYSPARK_ARCHIVES} "livy.conf" "livy"
load_config "livy.sparkr.package" ${LIVY_SPARKR_PACKAGE} "livy.conf" "livy"
load_config "livy.file.local-dir-whitelist" ${LIVY_FILE_LOCAL_DIR_WHITELIST} "livy.conf" "livy"
