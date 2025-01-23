echo "start services ..."
systemctl enable mongod
systemctl restart mongod
systemctl enable rabbitmq-server
systemctl restart rabbitmq-server

chmod +x /opt/ARL/app/tools/*
echo "start arl services ..."

systemctl enable arl-web
systemctl restart arl-web
systemctl enable arl-worker
systemctl restart arl-worker
systemctl enable arl-worker-github
systemctl restart arl-worker-github
systemctl enable arl-scheduler
systemctl restart arl-scheduler
systemctl enable nginx
systemctl restart nginx

python3.6 tools/add_finger.py
python3.6 tools/add_finger_ehole.py

echo "install done"
