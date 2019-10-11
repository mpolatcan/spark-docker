#!/usr/bin/env bash
function loadConfig() {
    if [[ "$2" != "NULL" ]]
        then
            printf "$1\t$2\n" >> "${SPARK_CONF_DIR}/spark-defaults.conf"
    fi
}

# ------------------------ APPLICATION PROPERTIES --------------------
loadConfig "spark.driver.cores" "${SPARK_DRIVER_CORES}"
loadConfig "spark.driver.maxResultSize" "${SPARK_DRIVER_MAX_RESULT_SIZE}"
loadConfig "spark.driver.memory" "${SPARK_DRIVER_MEMORY}"
loadConfig "spark.driver.memoryOverhead" "${SPARK_DRIVER_MEMORY_OVERHEAD}"
loadConfig "spark.executor.memory" "${SPARK_EXECUTOR_MEMORY}"
loadConfig "spark.executor.pyspark.memory" "${SPARK_EXECUTOR_PYSPARK_MEMORY}"
loadConfig "spark.executor.memoryOverhead" "${SPARK_EXECUTOR_MEMORY_OVERHEAD}"
loadConfig "spark.extraListeners" "${SPARK_EXTRA_LISTENERS}"
loadConfig "spark.local.dir" "${SPARK_LOCAL_DIR}"
loadConfig "spark.logConf" "${SPARK_LOG_CONF}"
loadConfig "spark.master" "${SPARK_MASTER}"
loadConfig "spark.submit.deployMode" "${SPARK_SUBMIT_DEPLOY_MODE}"
loadConfig "spark.log.callerContext" "${SPARK_LOG_CALLER_CONTEXT}"
loadConfig "spark.driver.supervise" "${SPARK_DRIVER_SUPERVISE}"
# --------------------------------------------------------------------

# ------------------- RUNTIME ENVIRONMENT PROPERTIES -----------------
loadConfig "spark.driver.extraClassPath" "${SPARK_DRIVER_EXTRA_CLASSPATH}"
loadConfig "spark.driver.extraJavaOptions" "${SPARK_DRIVER_EXTRA_JAVA_OPTIONS}"
loadConfig "spark.driver.extraLibraryPath" "${SPARK_DRIVER_EXTRA_LIBRARY_PATH}"
loadConfig "spark.driver.userClassPathFirst" "${SPARK_DRIVER_USER_CLASSPATH_FIRST}"
loadConfig "spark.executor.extraClassPath" "${SPARK_EXECUTOR_EXTRA_CLASSPATH}"
loadConfig "spark.executor.extraJavaOptions" "${SPARK_EXECUTOR_EXTRA_JAVA_OPTIONS}"
loadConfig "spark.executor.extraLibraryPath" "${SPARK_EXECUTOR_EXTRA_LIBRARY_PATH}"
loadConfig "spark.executor.logs.rolling.maxRetainedFiles" "${SPARK_EXECUTOR_LOGS_ROLLING_MAX_RETAINED_FILES}"
loadConfig "spark.executor.logs.rolling.enableCompression" "${SPARK_EXECUTOR_LOGS_ROLLING_ENABLE_COMPRESSION}"
loadConfig "spark.executor.logs.rolling.maxSize" "${SPARK_EXECUTOR_LOGS_ROLLING_MAX_SIZE}"
loadConfig "spark.executor.logs.rolling.strategy" "${SPARK_EXECUTOR_LOGS_ROLLING_STRATEGY}"
loadConfig "spark.executor.logs.rolling.time.interval" "${SPARK_EXECUTOR_LOGS_ROLLING_TIME_INTERVAL}"
loadConfig "spark.executor.userClassPathFirst" "${SPARK_EXECUTOR_USER_CLASSPATH_FIRST}"
loadConfig "spark.redaction.regex" "${SPARK_REDACTION_REGEX}"
loadConfig "spark.python.profile" "${SPARK_PYTHON_PROFILE}"
loadConfig "spark.python.profile.dump" "${SPARK_PYTHON_PROFILE_DUMP}"
loadConfig "spark.python.worker.memory" "${SPARK_PYTHON_WORKER_MEMORY}"
loadConfig "spark.python.worker.reuse" "${SPARK_PYTHON_WORKER_REUSE}"
loadConfig "spark.files" "${SPARK_FILES}"
loadConfig "spark.submit.pyFiles" "${SPARK_SUBMIT_PYFILES}"
loadConfig "spark.jars" "${SPARK_JARS}"
loadConfig "spark.jars.packages" "${SPARK_JARS_PACKAGES}"
loadConfig "spark.jars.excludes" "${SPARK_JARS_EXCLUDES}"
loadConfig "spark.jars.ivy" "${SPARK_JARS_IVY}"
loadConfig "spark.jars.ivySettings" "${SPARK_JARS_IVY_SETTINGS}"
loadConfig "spark.jars.repositories" "${SPARK_JARS_REPOSITORIES}"
loadConfig "spark.pyspark.driver.python" "${SPARK_PYSPARK_DRIVER_PYTHON}"
loadConfig "spark.pyspark.python" "${SPARK_PYSPARK_PYTHON}"
# --------------------------------------------------------------------

# -------------------- SHUFFLE BEHAVIOR PROPERTIES -------------------
loadConfig "spark.reducer.maxSizeInFlight" "${SPARK_REDUCER_MAX_SIZE_IN_FLIGHT}"
loadConfig "spark.reducer.maxReqsInFlight" "${SPARK_REDUCER_MAX_REQS_IN_FLIGHT}"
loadConfig "spark.reducer.maxBlocksInFlightPerAddress" "${SPARK_REDUCER_MAX_BLOCKS_IN_FLIGHT_PER_ADDRESS}"
loadConfig "spark.maxRemoteBlockSizeFetchToMem" "${SPARK_MAX_REMOTE_BLOCK_SIZE_FETCH_TO_MEM}"
loadConfig "spark.shuffle.compress" "${SPARK_SHUFFLE_COMPRESS}"
loadConfig "spark.shuffle.file.buffer" "${SPARK_SHUFFLE_FILE_BUFFER}"
loadConfig "spark.shuffle.io.maxRetries" "${SPARK_SHUFFLE_IO_MAX_RETRIES}"
loadConfig "spark.shuffle.io.numConnectionsPerPeer" "${SPARK_SHUFFLE_IO_NUM_CONNECTIONS_PER_PEER}"
loadConfig "spark.shuffle.io.preferDirectBufs" "${SPARK_SHUFFLE_IO_PREFER_DIRECT_BUFS}"
loadConfig "spark.shuffle.io.retryWait" "${SPARK_SHUFFLE_IO_RETRY_WAIT}"
loadConfig "spark.shuffle.service.enabled" "${SPARK_SHUFFLE_SERVICE_EANBLED}"
loadConfig "spark.shuffle.service.port" "${SPARK_SHUFFLE_SERVICE_PORT}"
loadConfig "spark.shuffle.service.index.cache.size" "${SPARK_SHUFFLE_SERVICE_INDEX_CACHE_SIZE}"
loadConfig "spark.shuffle.maxChunksBeingTransferred" "${SPARK_SHUFFLE_MAX_CHUNKS_BEING_TRANSFERRED}"
loadConfig "spark.shuffle.sort.bypassMergeThreshold" "${SPARK_SHUFFLE_SORT_BYPASS_MERGE_THRESHOLD}"
loadConfig "spark.shuffle.spill.compress" "${SPARK_SHUFFLE_SPILL_COMPRESS}"
loadConfig "spark.shuffle.registration.timeout" "${SPARK_SHUFFLE_REGISTRATION_TIMEOUT}"
loadConfig "spark.shuffle.registration.maxAttempts" "${SPAwRK_SHUFFLE_REGISTRATION_MAX_ATTEMPTS}"
loadConfig "spark.io.encryption.enabled" "${SPARK_IO_ENCRYPTION_ENABLED}"
loadConfig "spark.io.encryption.keySizeBitss" "${SPARK_IO_ENCRYPTION_KEY_SIZE_BITS}"
loadConfig "spark.io.encryption.keygen.algorithm" "${SPARK_IO_ENCRYPTION_KEYGEN_ALGORITHM}"
# --------------------------------------------------------------------

# ----------------------- SPARK UI PROPERTIES ------------------------
loadConfig "spark.eventLog.logBlockUpdates.enabled" "${SPARK_EVENTLOG_LOG_BLOCK_UPDATES_ENABLED}"
loadConfig "spark.eventLog.longForm.enabled" "${SPARK_EVENTLOG_LONGFORM_ENABLED}"
loadConfig "spark.eventLog.compress" "${SPARK_EVENTLOG_COMPRESS}"
loadConfig "spark.eventLog.dir" "${SPARK_EVENTLOG_DIR}"
loadConfig "spark.eventLog.enabled" "${SPARK_EVENTLOG_ENABLED}"
loadConfig "spark.eventLog.overwrite" "${SPARK_EVENTLOG_OVERWRITE}"
loadConfig "spark.eventLog.buffer.kb" "${SPARK_EVENTLOG_BUFFER_KB}"
loadConfig "spark.ui.dagGraph.retainedRootRDDs" "${SPARK_UI_DAG_GRAPH_RETAINED_ROOT_RDDS}"
loadConfig "spark.ui.enabled" "${SPARK_UI_ENABLED}"
loadConfig "spark.ui.killEnabled" "${SPARK_UI_KILL_ENABLED}"
loadConfig "spark.ui.liveUpdate.period" "${SPARK_UI_LIVE_UPDATE_PERIOD}"
loadConfig "spark.ui.liveUpdate.minFlushPeriod" "${SPARK_UI_LIVE_UPDATE_MIN_FLUSH_PERIOD}"
loadConfig "spark.ui.port" "${SPARK_UI_PORT}"
loadConfig "spark.ui.retainedJobs" "${SPARK_UI_RETAINED_JOBS}"
loadConfig "spark.ui.retainedStages" "${SPARK_UI_RETAINED_STAGES}"
loadConfig "spark.ui.retainedTasks" "${SPARK_UI_RETAINED_TASKS}"
loadConfig "spark.ui.reverseProxy" "${SPARK_UI_REVERSE_PROXY}"
loadConfig "spark.ui.reverseProxyUrl" "${SPARK_UI_REVERSE_PROXY_URL}"
loadConfig "spark.ui.showConsoleProgress" "${SPARK_UI_SHOW_CONSOLE_PROGRESS}"
loadConfig "spark.worker.ui.retainedExecutors" "${SPARK_WORKER_UI_RETAINED_EXECUTORS}"
loadConfig "spark.worker.ui.retainedDrivers" "${SPARK_WORKER_UI_RETAINED_DRIVERS}"
loadConfig "spark.sql.ui.retainedExecutions" "${SPARK_SQL_UI_RETAINED_EXECUTIONS}"
loadConfig "spark.streaming.ui.retainedBatches" "${SPARK_STREAMING_UI_RETAINED_BATCHES}"
loadConfig "spark.ui.retainedDeadExecutors" "${SPARK_UI_RETAINED_DEAD_EXECUTORS}"
loadConfig "spark.ui.filters" "${SPARK_UI_FILTERS}"
# --------------------------------------------------------------------

# ------------- COMPRESSION AND SERIALIZATION PROPERTIES -------------
loadConfig "spark.broadcast.compress" "${SPARK_BROADCAST_COMPRESS}"
loadConfig "spark.checkpoint.compress" "${SPARK_CHECKPOINT_COMPRESS}"
loadConfig "spark.io.compression.codec" "${SPARK_IO_COMPRESSION_CODEC}"
loadConfig "spark.io.compression.lz4.blockSize" "${SPARK_IO_COMPRESSION_LZ4_BLOCKSIZE}"
loadConfig "spark.io.compression.snappy.blockSize" "${SPARK_IO_COMPRESSION_SNAPPY_BLOCKSIZE}"
loadConfig "spark.io.compression.zstd.level" "${SPARK_IO_COMPRESSION_ZSTD_LEVEL}"
loadConfig "spark.io.compression.zstd.bufferSize" "${SPARK_IO_COMPRESSION_ZSTD_BUFFER_SIZE}"
loadConfig "spark.kryo.classesToRegister" "${SPARK_KRYO_CLASSES_TO_REGISTER}"
loadConfig "spark.kryo.referenceTracking" "${SPARK_KRYO_REFERENCE_TRACKING}"
loadConfig "spark.kryo.registrationRequired" "${SPARK_KRYO_REGISTRATION_REQUIRED}"
loadConfig "spark.kryo.registrator" "${SPARK_KRYO_REGISTRATOR}"
loadConfig "spark.kryo.unsafe" "${SPARK_KRYO_UNSAFE}"
loadConfig "spark.kryoserializer.buffer.max" "${SPARK_KRYO_SERIALIZER_BUFFER_MAX}"
loadConfig "spark.kryoserializer.buffer" "${SPARK_KRYO_SERIALIZER_BUFFER}"
loadConfig "spark.rdd.compress" "${SPARK_RDD_COMPRESS}"
loadConfig "spark.serializer" "${SPARK_SERIALIZER}"
loadConfig "spark.serializer.objectStreamReset" "${SPARK_SERIALIZER_OBJECT_STREAM_RESET}"
# --------------------------------------------------------------------

# ------------------- MEMORY MANAGEMENT PROPERTIES -------------------
loadConfig "spark.memory.fraction" "${SPARK_MEMORY_FRACTION}"
loadConfig "spark.memory.storageFraction" "${SPARK_MEMORY_STORAGE_FRACTION}"
loadConfig "spark.memory.offHeap.enabled" "${SPARK_MEMORY_OFFHEAP_ENABLED}"
loadConfig "spark.memory.offHeap.size" "${SPARK_MEMORY_OFFHEAP_SIZE}"
loadConfig "spark.memory.useLegacyMode" "${SPARK_MEMORY_USE_LEGACY_MODE}"
loadConfig "spark.shuffle.memoryFraction" "${SPARK_SHUFFLE_MEMORY_FRACTION}"
loadConfig "spark.storage.memoryFraction" "${SPARK_STORAGE_MEMORY_FRACTION}"
loadConfig "spark.storage.unrollFraction" "${SPARK_STORAGE_UNROLL_FRACTION}"
loadConfig "spark.storage.replication.proactive" "${SPARK_STORAGE_REPLICATION_PROACTIVE}"
loadConfig "spark.cleaner.periodicGC.interval" "${SPARK_CLEANER_PERIODIC_GC_INTERVAL}"
loadConfig "spark.cleaner.referenceTracking" "${SPARK_CLEANER_REFERENCE_TRACKING}"
loadConfig "spark.cleaner.referenceTracking.blocking" "${SPARK_CLEANER_REFERENCE_TRACKING_BLOCKING}"
loadConfig "spark.cleaner.referenceTracking.blocking.shuffle" "${SPARK_CLEANER_REFERENCE_TRACKING_BLOCKING_SHUFFLE}"
loadConfig "spark.cleaner.referenceTracking.cleanCheckpoints" "${SPARK_CLEANER_REFERENCE_TRACKING_CLEAN_CHECKPOINTS}"
# --------------------------------------------------------------------

# ------------------- EXECUTION BEHAVIOR PROPERTIES ------------------
loadConfig "spark.broadcast.blockSize" "${SPARK_BROADCAST_BLOCKSIZE}"
loadConfig "spark.broadcast.checksum" "${SPARK_BROADCAST_CHECKSUM}"
loadConfig "spark.executor.cores" "${SPARK_EXECUTOR_CORES}"
loadConfig "spark.default.parallelism" "${SPARK_DEFAULT_PARALLELISM}"
loadConfig "spark.executor.heartbeatInterval" "${SPARK_EXECUTOR_HEARTBEAT_INTERVAL}"
loadConfig "spark.files.fetchTimeout" "${SPARK_FILES_FETCH_TIMEOUT}"
loadConfig "spark.files.useFetchCache" "${SPARK_FILES_USE_FETCH_CACHE}"
loadConfig "spark.files.overwrite" "${SPARK_FILES_OVERWRITE}"
loadConfig "spark.files.maxPartitionBytes" "${SPARK_FILES_MAX_PARTITION_BYTES}"
loadConfig "spark.files.openCostInBytes" "${SPARK_FILES_OPEN_COST_IN_BYTES}"
loadConfig "spark.hadoop.cloneConf" "${SPARK_HADOOP_CLONE_CONF}"
loadConfig "spark.hadoop.validateOutputSpecs" "${SPARK_HADOOP_VALIDATE_OUTPUT_SPECS}"
loadConfig "spark.storage.memoryMapThreshold" "${SPARK_STORAGE_MEMORY_MAP_THRESHOLD}"
loadConfig "spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version" "${SPARK_HADOOP_MAPREDUCE_FILEOUTPUTCOMMITTER_ALGORITHM_VERSION}"
# --------------------------------------------------------------------

# ---------------------- NETWORKING PROPERTIES -----------------------
loadConfig "spark.rpc.message.maxSize" "${SPARK_RPC_MESSAGE_MAX_SIZE}"
loadConfig "spark.blockManager.port" "${SPARK_BLOCKMANAGER_PORT}"
loadConfig "spark.driver.blockManager.port" "${SPARK_DRIVER_BLOCKMANAGER_PORT}"
loadConfig "spark.driver.bindAddress" "${SPARK_DRIVER_BIND_ADDRESS}"
loadConfig "spark.driver.host" "${SPARK_DRIVER_HOST}"
loadConfig "spark.driver.port" "${SPARK_DRIVER_PORT}"
loadConfig "spark.rpc.io.backLog" "${SPARK_RPC_IO_BACKLOG}"
loadConfig "spark.port.maxRetries" "${SPARK_PORT_MAX_RETRIES}"
loadConfig "spark.rpc.numRetries" "${SPARK_RPC_NUM_RETRIES}"
loadConfig "spark.rpc.retry.wait" "${SPARK_RPC_RETRY_WAIT}"
loadConfig "spark.rpc.askTimeout" "${SPARK_RPC_ASK_TIMEOUT}"
loadConfig "spark.rpc.lookupTimeout" "${SPARK_RPC_LOOKUP_TIMEOUT}"
# --------------------------------------------------------------------

# ------------------------ SCHEDULING PROPERTIES ---------------------
loadConfig "spark.cores.max" "${SPARK_CORES_MAX}"
loadConfig "spark.locality.wait" "${SPARK_LOCALITY_WAIT}"
loadConfig "spark.locality.wait.node" "${SPARK_LOCALITY_WAIT_NODE}"
loadConfig "spark.locality.wait.process" "${SPARK_LOCALITY_WAIT_PROCESS}"
loadConfig "spark.locality.wait.rack" "${SPARK_LOCALITY_WAIT_RACK}"
loadConfig "spark.scheduler.maxRegisteredResourcesWaitingTime" "${SPARK_SCHEDULER_MAX_REGISTERED_RESOURCES_WAITING_TIME}"
loadConfig "spark.scheduler.minRegisteredResourcesRatio" "${SPARK_SCHEDULER_MIN_REGISTERED_RESOURCES_RATION}"
loadConfig "spark.scheduler.mode" "${SPARK_SCHEDULER_MODE}"
loadConfig "spark.scheduler.revive.interval" "${SPARK_SCHEDULER_REVIVE_INTERVAL}"
loadConfig "spark.scheduler.listenerbus.eventqueue.capacity" "${SPARK_SCHEDULER_LISTENERBUS_EVENTQUEUE_CAPACITY}"
loadConfig "spark.scheduler.blacklist.unschedulableTaskSetTimeout" "${SPARK_SCHEDULER_BLACKLIST_UNSCHEDULABLE_TASK_SET_TIMEOUT}"
loadConfig "spark.blacklist.enabled" "${SPARK_BLACKLIST_ENABLED}"
loadConfig "spark.blacklist.timeout" "${SPARK_BLACKLIST_TIMEOUT}"
loadConfig "spark.blacklist.task.maxTaskAttemptsPerExecutor" "${SPARK_BLACKLIST_TASK_MAX_TASK_ATTEMPTS_PER_EXECUTOR}"
loadConfig "spark.blacklist.task.maxTaskAttemptsPerNode" "${SPARK_BLACKLIST_TASK_MAX_TASK_ATTEMPTS_PER_NODE}"
loadConfig "spark.blacklist.stage.maxFailedTasksPerExecutor" "${SPARK_BLACKLIST_STAGE_MAX_FAILED_TASKS_PER_EXECUTOR}"
loadConfig "spark.blacklist.stage.maxFailedExecutorsPerNode" "${SPARK_BLACKLIST_STAGE_MAX_FAILED_EXECUTORS_PER_NODE}"
loadConfig "spark.blacklist.application.maxFailedTasksPerExecutor" "${SPARK_BLACKLIST_APPLICATION_MAX_FAILED_TASKS_PER_EXECUTOR}"
loadConfig "spark.blacklist.application.maxFailedExecutorsPerNode" "${SPARK_BLACKLIST_APPLICATION_MAX_FAILED_EXECUTORS_PER_NODE}"
loadConfig "spark.blacklist.killBlacklistedExecutors" "${SPARK_BLACKLIST_KILL_BLACKLISTED_EXECUTORS}"
loadConfig "spark.blacklist.application.fetchFailure.enabled" "${SPARK_BLACKLIST_APPLICATION_FETCH_FAILURE_ENABLED}"
loadConfig "spark.speculation" "${SPARK_SPECULATION}"
loadConfig "spark.speculation.interval" "${SPARK_SPECULATION_INTERVAL}"
loadConfig "spark.speculation.multiplier" "${SPARK_SPECULATION_MULTIPLIER}"
loadConfig "spark.speculation.quantile" "${SPARK_SPECULATION_QUANTILE}"
loadConfig "spark.task.cpus" "${SPARK_TASK_CPUS}"
loadConfig "spark.task.maxFailures" "${SPARK_TASK_MAX_FAILURES}"
loadConfig "spark.task.reaper.enabled" "${SPARK_TASK_REAPER_ENABLED}"
loadConfig "spark.task.reaper.pollingInterval" "${SPARK_TASK_REAPER_POLLING_INTERVAL}"
loadConfig "spark.task.reaper.threadDump" "${SPARK_TASK_REAPER_THREAD_DUMP}"
loadConfig "spark.task.reaper.killTimeout" "${SPARK_TASK_REAPER_KILL_TIMEOUT}"
loadConfig "spark.stage.maxConsecutiveAttempts" "${SPARK_STAGE_MAX_CONSECUTIVE_ATTEMPTS}"
# --------------------------------------------------------------------

# --------------------- DYNAMIC ALLOCATION PROPERTIES ----------------
loadConfig "spark.dynamicAllocation.enabled" "${SPARK_DYNAMIC_ALLOCATION_ENABLED}"
loadConfig "spark.dynamicAllocation.executorIdleTimeout" "${SPARK_DYNAMIC_ALLOCATION_EXECUTOR_IDLE_TIMEOUT}"
loadConfig "spark.dynamicAllocation.initialExecutors" "${SPARK_DYNAMIC_ALLOCATION_INITIAL_EXECUTORS}"
loadConfig "spark.dynamicAllocation.cachedExecutorIdleTimeout" "${SPARK_DYNAMIC_ALLOCATION_CACHED_EXECUTOR_IDLE_TIMEOUT}"
loadConfig "spark.dynamicAllocation.maxExecutors" "${SPARK_DYNAMIC_ALLOCATION_MAX_EXECUTORS}"
loadConfig "spark.dynamicAllocation.minExecutors" "${SPARK_DYNAMIC_ALLOCATION_MIN_EXECUTORS}"
loadConfig "spark.dynamicAllocation.executorAllocationRatio" "${SPARK_DYNAMIC_ALLOCATION_EXECUTOR_ALLOCATION_RATIO}"
loadConfig "spark.dynamicAllocation.schedulerBacklogTimeout" "${SPARK_DYNAMIC_ALLOCATION_SCHEDULER_BACKLOG_TIMEOUT}"
# --------------------------------------------------------------------

# ------------------------- SECURITY PROPERTIES ----------------------
loadConfig "spark.acls.enable" "${SPARK_ACLS_ENABLE}"
loadConfig "spark.admin.acls" "${SPARK_ADMIN_ACLS}"
loadConfig "spark.admin.acls.groups" "${SPARK_ADMIN_ACLS_GROUPS}"
loadConfig "spark.user.groups.mapping" "${SPARK_USER_GROUPS_MAPPING}"
loadConfig "spark.authenticate" "${SPARK_AUTHENTICATE}"
loadConfig "spark.authenticate.secret" "${SPARK_AUTHENTICATE_SECRET}"
loadConfig "spark.network.crypto.enabled" "${SPARK_NETWORK_CRYPTO_ENABLED}"
loadConfig "spark.network.crypto.keyLength" "${SPARK_NETWORK_CRYPTO_KEY_LENGTH}"
loadConfig "spark.network.crypto.keyFactoryAlgorithm" "${SPARK_NETWORK_CRYPTO_KEY_FACTORY_ALGORITHM}"
loadConfig "spark.network.crypto.saslFallback" "${SPARK_NETWORK_CRYPTO_SASL_FALLBACK}"
loadConfig "spark.authenticate.enableSaslEncryption" "${SPARK_AUTHENTICATE_ENABLE_SASL_ENCRYPTION}"
loadConfig "spark.network.sasl.serverAlwaysEncrypt" "${SPARK_NETWORK_SASL_SERVER_ALWAYS_ENCRYPT}"
loadConfig "spark.core.connection.ack.wait.timeout" "${SPARK_CORE_CONNECTION_ACK_WAIT_TIMEOUT}"
loadConfig "spark.modify.acls" "${SPARK_MODIFY_ACLS}"
loadConfig "spark.modify.acls.groups" "${SPARK_MODIFY_ACLS_GROUPS}"
loadConfig "spark.ui.filters" "${SPARK_UI_FILTERS}"
loadConfig "spark.ui.view.acls" "${SPARK_UI_VIEW_ACLS}"
loadConfig "spark.ui.view.acls.groups" "${SPARK_UI_VIEW_ACLS_GROUPS}"
# --------------------------------------------------------------------

# -------------------------- TLS / SSL PROPERTIES --------------------
loadConfig "spark.ssl.enabled" "${SPARK_SSL_ENABLED}"
loadConfig "spark.ssl.enabledAlgorithms" "${SPARK_SSL_ENABLED_ALGORITHMS}"
loadConfig "spark.ssl.keyPassword" "${SPARK_SSL_KEY_PASSWORD}"
loadConfig "spark.ssl.keyStore" "${SPARK_SSL_KEYSTORE}"
loadConfig "spark.ssl.keyStorePassword" "${SPARK_SSL_KEYSTORE_PASSWORD}"
loadConfig "spark.ssl.keyStoreType" "${SPARK_SSL_KEYSTORE_TYPE}"
loadConfig "spark.ssl.protocol" "${SPARK_SSL_PROTOCOL}"
loadConfig "spark.ssl.needClientAuth" "${SPARK_SSL_NEED_CLIENT_AUTH}"
loadConfig "spark.ssl.trustStore" "${SPARK_SSL_TRUSTSTORE}"
loadConfig "spark.ssl.trustStorePassword" "${SPARK_SSL_TRUSTSTORE_PASSWORD}"
loadConfig "spark.ssl.trustStoreType" "${SPARK_SSL_TRUSTSTORE_TYPE}"
# --------------------------------------------------------------------

# ---------------------- SPARK STREAMING PROPERTIES ------------------
loadConfig "spark.streaming.backpressure.enabled" "${SPARK_STREAMING_BACKPRESSURE_ENABLED}"
loadConfig "spark.streaming.backpressure.initialRate" "${SPARK_STREAMING_BACKPRESSURE_INITIAL_RATE}"
loadConfig "spark.streaming.blockInterval" "${SPARK_STREAMING_BLOCK_INTERVAL}"
loadConfig "spark.streaming.receiver.maxRate" "${SPARK_STREAMING_RECEIVER_MAX_RATE}"
loadConfig "spark.streaming.receiver.writeAheadLog.enable" "${SPARK_STREAMING_RECEIVER_WAL_LOG_ENABLE}"
loadConfig "spark.streaming.unpersist" "${SPARK_STREAMING_UNPERSIST}"
loadConfig "spark.streaming.stopGracefullyOnShutdown" "${SPARK_STREAMING_STOP_GRACEFULLY_ON_SHUTDOWN}"
loadConfig "spark.streaming.kafka.maxRatePerPartition" "${SPARK_STREAMING_KAFKA_MAX_RATE_PER_PARTITION}"
loadConfig "spark.streaming.kafka.maxRetries" "${SPARK_STREAMING_KAFKA_MAX_RETRIES}"
loadConfig "spark.streaming.ui.retainedBatches" "${SPARK_STREAMING_UI_RETAINED_BATCHES}"
loadConfig "spark.streaming.driver.writeAheadLog.closeFileAfterWrite" "${SPARK_STREAMING_DRIVER_WAL_LOG_CLOSE_FILE_AFTER_WRITE}"
loadConfig "spark.streaming.receiver.writeAheadLog.closeFileAfterWrite" "${SPARK_STREAMING_RECEIVER_WAL_LOG_CLOSE_FILE_AFTER_WRITE}"
# --------------------------------------------------------------------

# ----------------------- SPARKR PROPERTIES --------------------------
loadConfig "spark.r.numRBackendThreads" "${SPARK_R_NUM_R_BACKEND_THREADS}"
loadConfig "spark.r.command" "${SPARK_R_COMMAND}"
loadConfig "spark.r.shell.command" "${SPARK_R_SHELL_COMMAND}"
loadConfig "spark.r.backendConnectionTimeout" "${SPARK_R_BACKEND_CONNECTION_TIMEOUT}"
loadConfig "spark.r.heartBeatInterval" "${SPARK_R_HEARTBEAT_INTERVAL}"
# --------------------------------------------------------------------

# --------------------------- GRAPHX PROPERTIES ----------------------
loadConfig "spark.graphx.pregel.checkpointInterval" "${SPARK_GRAPHX_PREGEL_CHECKPOINT_INTERVAL}"
# --------------------------------------------------------------------

# --------------------------- DEPLOY PROPERTIES ----------------------
loadConfig "spark.deploy.recoveryMode" "${SPARK_DEPLOY_RECOVERY_MODE}"
loadConfig "spark.deploy.zookeeper.url" "${SPARK_DEPLOY_ZOOKEEPER_URL}"
loadConfig "spark.deploy.zookeeper.dir" "${SPARK_DEPLOY_ZOOKEEPER_DIR}"
# --------------------------------------------------------------------

# --------------------------- YARN PROPERTIES ---------------------------
loadConfig "spark.yarn.am.memory" ${SPARK_YARN_AM_MEMORY}
loadConfig "spark.yarn.am.cores" ${SPARK_YARN_AM_CORES}
loadConfig "spark.yarn.am.waitTime" ${SPARK_YARN_AM_WAIT_TIME}
loadConfig "spark.yarn.submit.file.replication" ${SPARK_YARN_SUBMIT_FILE_REPLICATION}
loadConfig "spark.yarn.stagingDir" ${SPARK_YARN_STAGING_DIR}
loadConfig "spark.yarn.preserve.staging.files" ${SPARK_YARN_PRESERVE_STAGING_FILES}
loadConfig "spark.yarn.scheduler.heartbeat.interval-ms" ${SPARK_YARN_SCHEDULER_HEARTBEAT_INTERVAL_MS}
loadConfig "spark.yarn.scheduler.initial-allocation.interval" ${SPARK_YARN_SCHEDULER_INITIAL_ALLOCATION_INTERVAL}
loadConfig "spark.yarn.max.executor.failures" ${SPARK_YARN_MAX_EXECUTOR_FAILURES}
loadConfig "spark.yarn.historyServer.address" ${SPARK_YARN_HISTORY_SERVER_ADDRESS}
loadConfig "spark.yarn.dist.archives" ${SPARK_YARN_DIST_ARCHIVES}
loadConfig "spark.yarn.dist.files" ${SPARK_YARN_DIST_FILES}
loadConfig "spark.yarn.dist.jars" ${SPARK_YARN_DIST_JARS}
loadConfig "spark.yarn.dist.forceDownloadSchemes" ${SPARK_YARN_DIST_FORCE_DOWNLOAD_SCHEMAS}
loadConfig "spark.executor.instances" ${SPARK_EXECUTOR_INSTANCES}
loadConfig "spark.yarn.am.memoryOverhead" ${SPARK_YARN_AM_OVERHEAD}
loadConfig "spark.yarn.queue" ${SPARK_YARN_QUEUE}
loadConfig "spark.yarn.jars" ${SPARK_YARN_JARS}
loadConfig "spark.yarn.archive" ${SPARK_YARN_ARCHIVE}
loadConfig "spark.yarn.containerLauncherMaxThreads" ${SPARK_YARN_CONTAINER_LAUNCHER_MAX_THREADS}
loadConfig "spark.yarn.am.extraJavaOptions" ${SPARK_YARN_AM_EXTRA_JAVA_OPTIONS}
loadConfig "spark.yarn.am.extraLibraryPath" ${SPARK_YARN_AM_EXTRA_LIBRARY_PATH}
loadConfig "spark.yarn.maxAppAttempts" ${SPARK_YARN_MAX_APP_ATTEMPTS}
loadConfig "spark.yarn.am.attemptFailuresValidityInterval" ${SPARK_YARN_AM_ATTEMPT_FAILURES_VALIDITY_INTERVAL}
loadConfig "spark.yarn.executor.failuresValidityInterval" ${SPARK_YARN_EXECUTOR_FAILRUES_VALIDITY_INTERVAL}
loadConfig "spark.yarn.submit.waitAppCompletion" ${SPARK_YARN_SUBMIT_WAIT_APP_COMPLETION}
loadConfig "spark.yarn.am.nodeLabelExpression" ${SPARK_YARN_AM_NODE_LABEL_EXPRESSION}
loadConfig "spark.yarn.executor.nodeLabelExpression" ${SPARK_YARN_EXECUTOR_NODE_LABEL_EXPRESSION}
loadConfig "spark.yarn.tags" ${SPARK_YARN_TAGS}
loadConfig "spark.yarn.config.gatewayPath" ${SPARK_YARN_CONFIG_GATEWAY_PATH}
loadConfig "spark.yarn.config.replacementPath" ${SPARK_YARN_CONFIG_REPLACEMENT_PATH}
loadConfig "spark.yarn.rolledLog.includePattern" ${SPARK_YARN_ROLLED_LOG_INCLUDE_PATTERN}
loadConfig "spark.yarn.rolledLog.excludePattern" ${SPARK_YARN_ROLLED_LOG_EXCLUDE_PATTERN}
loadConfig "spark.yarn.blacklist.executor.launch.blacklisting.enabled" ${SPARK_YARN_BLACKLIST_EXECUTOR_LAUNCH_BLACKLISTING_ENABLED}
loadConfig "spark.yarn.metrics.namespace" ${SPARK_YARN_METRICS_NAMESPACE}
# --------------------------------------------------------------------