#!/bin/bash


wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo add-apt-repository "deb https://artifacts.elastic.co/packages/7.x/apt stable main"
sudo apt-get update
sudo apt-get install -q -y --no-install-recommends elasticsearch
sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji

# if [ -f /usr/share/elasticsearch/bin/elasticsearch ]; then
#     sudo useradd elasticsearch
#     sudo mkdir -p /var/log/elasticsearch /var/lib/elasticsearch
#     sudo chown elasticsearch:elasticsearch /var/log/elasticsearch /var/lib/elasticsearch
# else
#     wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#     sudo add-apt-repository "deb https://artifacts.elastic.co/packages/7.x/apt stable main"
#     sudo apt-get update
#     sudo apt-get install -q -y --no-install-recommends elasticsearch
#     sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji
# fi

sudo chown elasticsearch:elasticsearch /etc/elasticsearch

sudo systemctl start elasticsearch
