# SET UP HADOOP 

## Create a Network/Switch

```
docker network create network_name --subnet ip_series
docker network ceate myhadoop_br --subnet 198.162.200.0/24

```

## Create Containers(Namenode and Datanodes)
```
docker  run  -itd --name  namenode  --hostname namenode --network myhadoop_br --ip 198.162.200.100 oraclelinux:8.3  bash  
docker  run  -itd --name  datanode1  --hostname datanode1 --network myhadoop_br  oraclelinux:8.3  bash 
docker  run  -itd --name  datanode2  --hostname datanode2 --network myhadoop_br  oraclelinux:8.3  bash 

```

## Install JAVA on Container
```
dnf  install  java-1.8.0-openjdk.x86_64  java-1.8.0-openjdk-devel.x86_64 -y

```

## Set the path in .bashrc file

### Go to .bashrc file
```
cd ~
vi .bashrc
```

### Check JAVA Version
```
java --version
```

### Add path at the end of .bashrc file
```
JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.292.b10-1.el8_4.x86_64
PATH=$PATH:$JAVA_HOME/bin
export PATH
```

## Install Apache Hadoop on base machine
```
wget https://downloads.apache.org/hadoop/common/stable/hadoop-3.3.1.tar.gz

```

## Copy Apache Hadoop to all the containers
```
docker cp hadoop-3.3.1.tar.gz namenode:/
docker cp hadoop-3.3.1.tar.gz datanode1:/
docker cp hadoop-3.3.1.tar.gz datanode2:/
```

## Install tar and Unzip the hadoop file

```
dnf install tar
tar -xvf hadoop-3.3.1.tar.gz

```

