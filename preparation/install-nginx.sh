#! /bin/sh

sudo apt update
sudo apt -y install nginx
sudo apt -y install unzip gnupg2 wget htop

# alp(1.0.3)
wget https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/local/bin/alp
sudo chown root:root /usr/local/bin/alp
rm alp_linux_amd64.zip

sudo cp ../nginx/nginx.conf /etc/nginx/sites-enabled/

sudo systemctl enable nginx
sudo systemctl startn nginx
