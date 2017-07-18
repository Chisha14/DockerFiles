#!bin/sh

/configure.sh ${ZOOKEEPER_SERVICE_HOST:-$1} ${NIMBUS_SERVICE_HOST:-$2}

exec /usr/local/storm/apache-storm-0.9.3/bin/storm jar /MyStormApp/storm-java-1.0-dev.jar com.baijian.storm.simple.HelloWorldTopology HelloWorld
