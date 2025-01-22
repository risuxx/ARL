# 项目根目录下的Dockerfile
FROM centos:8

WORKDIR /opt/ARL

COPY . .

EXPOSE 5003

# 运行 setup-arl.sh 脚本
RUN /bin/bash /opt/ARL/misc/setup-arl.sh

# 使用 ENTRYPOINT 来运行脚本
ENTRYPOINT ["/bin/bash", "misc/start-service-arl.sh"]
