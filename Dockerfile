FROM padcom/oracle-java:jre8u31
MAINTAINER Matthias Hryniszak <padcom@gmail.com>

RUN opkg-install curl

RUN curl http://www.orientechnologies.com/download.php?email=unknown@unknown.com\&file=orientdb-community-1.7.10.tar.gz\&os=linux -L -k | gzip -dc | tar -xf - -C /opt && \
    ln -s /opt/orientdb-community-1.7.10 /opt/orientdb

ENV ORIENTDB_HOME /opt/orientdb

EXPOSE 2424 2480

WORKDIR /opt/orientdb/bin

CMD /opt/orientdb/bin/server.sh
