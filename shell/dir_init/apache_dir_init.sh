#!/bin/zsh

mkdir -p /data/logs/{hadoop,kafka,zookeeper,storm}
mkdir -p /data/logs/hadoop/nodemanager

mkdir -p /data/storage/{hadoop,kafka,zookeeper,storm,spark}
mkdir -p /data/storage/hadoop/{pids,hdfs,journal,tmp}
mkdir -p /data/storage/hadoop/hdfs/{data,name}
mkdir -p /data/storage/hadoop/tmp/nodemanager/{local,remote}
