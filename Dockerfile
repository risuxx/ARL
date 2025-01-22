# 项目根目录下的Dockerfile
FROM centos:8

WORKDIR /opt/ARL

COPY . .

EXPOSE 5003

CMD ["systemctl", "start", "arl-web", "arl-worker", "arl-worker-github", "arl-scheduler", "nginx"]
