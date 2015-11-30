# !/bin/zsh
rm -rf   /data/*

mkdir -p /data/{logs,framework,storage}

mkdir -p /data/logs/{hadoop,kafka,zookeeper,storm}
mkdir -p /data/logs/hadoop/nodemanager

mkdir -p /data/framework/{php,python,cplusplus}

mkdir -p /data/storage/{hadoop,kafka,zookeeper,storm,spark}
mkdir -p /data/storage/hadoop/{pids,hdfs,journal,tmp}
mkdir -p /data/storage/hadoop/hdfs/{data,name}
mkdir -p /data/storage/hadoop/tmp/nodemanager/{local,remote}

chown nobody:nogroup -hR /data/*
