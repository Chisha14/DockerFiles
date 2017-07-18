FROM centos:latest

MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>

RUN yum update -y && yum install -y java tar wget

RUN wget http://archive.apache.org/dist/storm/apache-storm-0.9.3/apache-storm-0.9.3.tar.gz
RUN mkdir /usr/local/storm
RUN tar -zxvf apache-storm-0.9.3.tar.gz
RUN mv apache-storm-0.9.3 /usr/local/storm

ADD configure.sh /
RUN chmod +x configure.sh
