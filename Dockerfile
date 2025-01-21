# 项目根目录下的Dockerfile
FROM centos:8

WORKDIR /opt/ARL

COPY . .

# 创建MongoDB数据目录
RUN mkdir -p /data/db

# 修改MongoDB配置文件
RUN sed -i 's/^dbpath.*/dbpath: \/data\/db/' /etc/mongod.conf

# 设置数据目录的权限
RUN chown -R mongod:mongod /data/db

EXPOSE 5003

# 创建一个数据卷
VOLUME ["/data/db"]

CMD ["systemctl", "start", "arl-web", "arl-worker", "arl-worker-github", "arl-scheduler", "nginx"]
