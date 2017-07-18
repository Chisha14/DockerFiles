FROM hash14/mystormbase
MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>
ADD start.sh /
RUN chmod +x start.sh
EXPOSE 8080
WORKDIR /usr/local/storm/apache-storm-0.9.3
ENTRYPOINT ["/start.sh"]
