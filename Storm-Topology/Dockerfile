FROM hash14/mystormbase

MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>

RUN yum install -y git
RUN git clone https://github.com/Chisha14/MyStormApp
ADD start.sh /
RUN chmod +x start.sh
WORKDIR /usr/local/storm/apache-storm-0.9.3
ENTRYPOINT ["/start.sh"]
