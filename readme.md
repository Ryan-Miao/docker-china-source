
Docker image source from china
================================

Just chanage the image source to aliyun or 163

## docker daemon

```
cat /etc/docker/daemon.json 
{ 
"registry-mirrors": ["https://registry.docker-cn.com", "http://hub-mirror.c.163.com","https://docker.mirrors.ustc.edu.cn"] 
}
```


## docker image source

see alpine-china
