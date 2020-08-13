sudo wget https://github.com/prometheus/prometheus/releases/download/v2.8.0/prometheus-2.8.0.linux-amd64.tar.gz
sudo wget https://github.com/prometheus/node_exporter/releases/download/v0.17.0/node_exporter-0.17.0.linux-amd64.tar.gz
tar -xzf node_exporter-0.17.0.linux-amd64.tar.gz
tar -xzf prometheus-2.8.0.linux-amd64.tar.gz
sudo rm -r node_exporter-0.17.0.linux-amd64.tar.gz 
sudo rm -r prometheus-2.8.0.linux-amd64.tar.gz 

echo "ATENCAO ADICIONAR NA SAIDA DO PROMETHEUS A PORTA 9100 E 3100"
