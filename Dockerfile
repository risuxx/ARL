# 项目根目录下的Dockerfile
FROM centos:8

WORKDIR /opt/ARL

COPY . .

COPY tools/ARL-NPoC /opt/ARL-NPoC

EXPOSE 5003
