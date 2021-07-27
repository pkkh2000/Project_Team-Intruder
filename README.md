## Create A Common Image
```
docker run -it  --name spark_common  ubuntu bash

```


## Install all the required 
```
apt update
apt  install  default-jdk  git  scala -y 
java -version ; javac -version ; scala -version ; git --version 
apt install wget -y
wget  https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
tar xvzf  spark-3.1.2-bin-hadoop3.2.tgz 
rm  spark-3.1.2-bin-hadoop3.2.tgz 
mv  spark-3.1.2-bin-hadoop3.2/  /opt/spark 
apt install vim -y
apt install python3 -y
apt install net-tools -y
```

## Set Path in /root/.bashrc file

```
export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
export PYSPARK_PYTHON=/usr/bin/python3
```

## Creating a common Image for creating Containers using it
```
docker  commit  -m  "spark common image"   spark_com   spark:v1 
```


## Pull the Image from Docker Hub
```
doker pull "image name"
```

## Creating Spark Container
```
docker  run -itd  --name sparkMaster --hostname sparkM  --network Hadoop_Br  -p 9898:8080 --restart  always  pkkh2000/spark:v1 bash
```

## Start the Worker and Master 
```
start-master.sh
start-worker.sh spark://sparkM:7077
jps
```
## Some Basic Commands
```
sc.PACKAGE_EXTENSIONS    sc.defaultMinPartitions  sc.master                sc.sequenceFile(         sc.startTime
sc.accumulator(          sc.defaultParallelism    sc.newAPIHadoopFile(     sc.serializer            sc.statusTracker(
sc.addFile(              sc.dump_profiles(        sc.newAPIHadoopRDD(      sc.setCheckpointDir(     sc.stop(
sc.addPyFile(            sc.emptyRDD(             sc.parallelize(          sc.setJobDescription(    sc.textFile(
sc.appName               sc.environment           sc.pickleFile(           sc.setJobGroup(          sc.uiWebUrl
sc.applicationId         sc.getCheckpointDir(     sc.profiler_collector    sc.setLocalProperty(     sc.union(
sc.binaryFiles(          sc.getConf(              sc.pythonExec            sc.setLogLevel(          sc.version
sc.binaryRecords(        sc.getLocalProperty(     sc.pythonVer             sc.setSystemProperty(    sc.wholeTextFiles(
sc.broadcast(            sc.getOrCreate(          sc.range(                sc.show_profiles(        
sc.cancelAllJobs(        sc.hadoopFile(           sc.resources             sc.sparkHome             
sc.cancelJobGroup(       sc.hadoopRDD(            sc.runJob(               sc.sparkUser(   
```

## Simple Command to create the data
```
yes "Data" >File_location
```


## Process the file using Pyspark
```
pyspark
f1=sc.textFile(File_location)
f1.first()
```

## Command to run the python file with Apache Spark
```
spark-submit sparkPython1.py
spark-submit countLetter.py
```


