
## docker-elasticsearch

##  安装并启动

1. 创建data和logs目录

```
mkdir -p es01/data
mkdir -p es01/logs
mkdir -p es02/data
mkdir -p es02/logs
mkdir -p es03/data
mkdir -p es03/logs

## es的用户id为1000，这里暂且授权给所有人好了
sudo chmod 777 es* -R

```

2. 启动

```
sudo docker-compose up

```

3. 生成密码

```
# 进入es pod内部
sudo docker exec -it es01 /bin/bash

# 创建密码
[root@cfeeab4bb0eb elasticsearch]# ./bin/elasticsearch-setup-passwords auto
Initiating the setup of passwords for reserved users elastic,apm_system,kibana,logstash_system,beats_system,remote_monitoring_user.
The passwords will be randomly generated and printed to the console.
Please confirm that you would like to continue [y/N]y


Changed password for user apm_system
PASSWORD apm_system = YxVzeT9B2jEDUjYp66Ws

Changed password for user kibana
PASSWORD kibana = 8NnThbj0N02iDaTGhidU

Changed password for user logstash_system
PASSWORD logstash_system = 9nIDGe7KSV8SQidSk8Dj

Changed password for user beats_system
PASSWORD beats_system = qeuVaf1VEALpJHfEUOjJ

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = DtZCrCkVTZsinRn3tW3D

Changed password for user elastic
PASSWORD elastic = q5f2qNfUJQyvZPIz57MZ
```


4. 重新启动

修改kibana.yml
```
elasticsearch.password: 你的密码
```

重启
```
sudo docker-compose stop
sudo docker-compose up
```