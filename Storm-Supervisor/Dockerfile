FROM hash14/mystormbase
MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>
ADD start.sh /
RUN chmod +x start.sh
EXPOSE 6700 6701 6702 6703
WORKDIR /usr/local/storm/apache-storm-0.9.3
ENTRYPOINT ["/start.sh"]
