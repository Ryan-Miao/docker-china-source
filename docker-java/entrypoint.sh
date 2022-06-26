#!/bin/bash
echo 'start' > a;
echo "cur port: $server_port" >> a;
# tail -f a;
java -jar *.jar --server.port=${server_port}