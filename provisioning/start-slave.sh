#!/bin/sh

mkdir /opt/jenkins-slave
cd /opt/jenkins-slave

curl -O http://${MASTER_HOST}/jnlpJars/slave.jar
java -jar slave.jar -jnlpUrl http://${MASTER_HOST}/computer/${SLAVE_NAME}/slave-agent.jnlp
