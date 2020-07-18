#!/bin/bash

set -x
# if [ -f /usr/share/elasticsearch/bin/elasticsearch ]; then
#     sudo chmod -R 2750 /etc/elasticsearch
#     sudo chmod -R 0600 /etc/elasticsearch/*
#     sudo useradd elasticsearch
#     sudo mkdir -p /var/log/elasticsearch /var/lib/elasticsearch
#     sudo chown -R elasticsearch:elasticsearch /var/log/elasticsearch /var/lib/elasticsearch
# else
#     wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#     sudo add-apt-repository "deb https://artifacts.elastic.co/packages/7.x/apt stable main"
#     sudo apt-get update
#     sudo apt-get install -q -y --no-install-recommends elasticsearch
#     sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji
#     sudo chmod -R 2755 /etc/elasticsearch
#     sudo chmod -R 0644 /etc/elasticsearch/*
#     sudo chmod 0644 /etc/default/elasticsearch
#     sudo chmod 0644 /etc/init.d/elasticsearch

# fi

if [ ! -d ~/elasticsearch ]; then
    mkdir ~/elasticsearch
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.0-amd64.deb -O ~/elasticsearch/elasticsearch-7.8.0-amd64.deb
fi

cd ~/elasticsearch
sudo dpkg -i ./elasticsearch-7.8.0-amd64.deb
sudo systemctl start elasticsearch
