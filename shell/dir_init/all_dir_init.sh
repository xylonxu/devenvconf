#!/bin/zsh

#fork
./framework_dir_init.sh
./apache_dir_init.sh

chown nobody:nogroup -hR /data/*
