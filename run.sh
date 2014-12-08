#!/bin/sh

docker run --name orientdb -d \
       -p 2424:2424 -p 2480:2480 \
       -v $(readlink -f config/orientdb-server-config.xml):/opt/orientdb/config/orientdb-server-config.xml \
       -v $(readlink -f config/orientdb-server-log.properties):/opt/orientdb/config/orientdb-server-log.properties \
       padcom/orientdb:1.7.10

# Persisting the storage - add the following volume:
#       -v $(readlink -f databases):/opt/orientdb/databases
