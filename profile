# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

# The default umask is now handled by pam_umask.
# See pam_umask(8) and /etc/login.defs.

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

# custom settings
export JAVA_HOME=/usr/local/tool/jdk
export CLASSPATH=.:/usr/local/tool/jdk/lib/:$JAVA_HOME/jre/lib;

# kafka configuration
export KAFKA_HOME=/usr/local/websrv/kafka

# storm configuration
export STORM_HOME=/usr/local/websrv/storm

# spark configuration
export SPARK_HOME=/usr/local/websrv/spark

# zookeeper configuration
export ZOO_HOME=/usr/local/websrv/zookeeper
export ZOO_LOG_DIR=/data/logs/zookeeper


export PATH=$JAVA_HOME/bin:$KAFKA_HOME/bin:$STORM_HOME/bin:$SPARK_HOME/bin:$ZOOKEEPER_HOME/bin:$PATH
