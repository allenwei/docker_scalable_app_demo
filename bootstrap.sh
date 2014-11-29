#!/usr/bin/env bash
sudo su
# install lastest docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
apt-get install -y dnsmasq
echo "server=/consul/127.0.0.1#8600" > /etc/dnsmasq.d/10-consul

# install fig
curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig
cd /vagrant/docker-loadbalancer
fig pull
fig build
docker pull shipyard/rethinkdb
docker pull shipyard/shipyard
docker pull shipyard/shipyard-cli
