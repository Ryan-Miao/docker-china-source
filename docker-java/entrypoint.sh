#!/bin/bash
logFile=a.log
echo 'start' > $logFile;
echo "cur port: $server_port" >> $logFile;
# tail -f a;




java ${JVM_OPT} -jar *.jar --server.port=${server_port}