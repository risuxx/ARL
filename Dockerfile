# 项目根目录下的Dockerfile
FROM centos:8

WORKDIR /opt/ARL

COPY . .

EXPOSE 5003
