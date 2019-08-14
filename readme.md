
国内docker镜像
================================

经常需要安装一些软件做测试，想要使用docker环境搭建我们的测试环境，于是需要一批合适的官方镜像。直接拉取hub的镜像比较慢，
而且，镜像内部的source在国内访问比较慢。为了方便平时开发测试环境，收集了使用过的docker国内源的镜像。基本是将source切换成
aliyun。


## 怎么使用

下载本项目，然后寻找合适的os，修改Dockerfile, 然后执行
```
make build
make start
```

ps:  由于目标是测试环境，没有精简cache，反而保留了cache，如果需要精简，使用精简镜像后复制repo或者sources即可。



## docker daemon

```
cat /etc/docker/daemon.json 
{ 
"registry-mirrors": ["https://registry.docker-cn.com", "http://hub-mirror.c.163.com","https://docker.mirrors.ustc.edu.cn"] 
}
```


