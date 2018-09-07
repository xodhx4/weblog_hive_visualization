service ssh start
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$HOME/hive/bin/hive --service metastore &
sleep 5
$HOME/hive/bin/hive --service hiveserver2 --hiveconf hive.server2.transport.mode=binary &
sleep 5
cd $HOME
pyspark &
/bin/bash