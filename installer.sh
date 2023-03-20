apt update
apt upgrade -y
wget https://github.com/nanopool/nanominer/releases/download/v3.7.7/nanominer-linux-3.7.7.tar.gz
tar -xf nanominer-linux-3.7.7.tar.gz
cd nanominer-linux-3.7.7
wget https://raw.githubusercontent.com/Tokaaaage/nanopool-mine/main/miner.sh
chmod 777 miner.sh
cd /etc/systemd/system
wget https://raw.githubusercontent.com/Tokaaaage/nanopool-mine/main/miner.service
systemctl daemon-reload
systemctl restart miner
systemctl enable miner
