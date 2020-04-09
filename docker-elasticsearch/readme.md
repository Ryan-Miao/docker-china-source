
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

5. 浏览器访问localhost:9200

输入elastic和对应的密码即可

6. 浏览器访问localhost:5601

kibana里输入elastic和对应密码即可

7. 可选择安装metricbeat

```
# 加载metricbeat自带的dashboard模板
sudo docker run \
  --network=docker-elasticsearch_elastic \
docker.elastic.co/beats/metricbeat:7.6.2 \
setup -E setup.kibana.host=kib01:5601 \
-E output.elasticsearch.hosts=["es01:9200"] \
-E output.elasticsearch.username=elastic \
-E output.elasticsearch.password=q5f2qNfUJQyvZPIz57MZ


# 收集宿主机运行的docker实例信息
sudo docker rm metricbeat
sudo docker run -it \
  --network=docker-elasticsearch_elastic \
  --name=metricbeat \
  --user=root \
  --volume="$(pwd)/metricbeat.docker.yml:/usr/share/metricbeat/metricbeat.yml" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --volume="/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro" \
  --volume="/proc:/hostfs/proc:ro" \
  --volume="/:/hostfs:ro" \
  docker.elastic.co/beats/metricbeat:7.6.2 metricbeat \
   -E   ELASTICSEARCH_HOSTS=es01:9200 \
   -E   ELASTICSEARCH_USERNAME=elastic \
   -E   ELASTICSEARCH_PASSWORD=q5f2qNfUJQyvZPIz57MZ 
```

- network是要和es网络联通
- out到es需要填写es的密码

更多收集细节见 https://www.elastic.co/guide/en/beats/metricbeat/7.6/running-on-docker.html