FROM fedora:25

MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>

RUN dnf -y install which java-1.8.0-openjdk libaio python gettext hostname iputils wget && dnf clean all -y

# set Scala and Kafka version
ENV SCALA_VERSION=2.11
ENV KAFKA_VERSION=0.10.1.1

# Set from build args
ARG version=latest
ENV VERSION ${version}

# downloading/extracting Apache Kafka
RUN wget http://www.eu.apache.org/dist/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz

RUN tar xvfz kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz -C /opt

# set Kakfa home folder
ENV KAFKA_HOME=/opt/kafka_$SCALA_VERSION-$KAFKA_VERSION

WORKDIR $KAFKA_HOME

EXPOSE 9092

# copy template configuration files
#COPY ./zookeeper.properties.template $KAFKA_HOME/config/

# copy scripts for starting Kafka
COPY ./kafka.sh $KAFKA_HOME
RUN chmod +x $KAFKA_HOME/kafka.sh

ENTRYPOINT ["/opt/kafka_2.11-0.10.1.1/kafka.sh"]
