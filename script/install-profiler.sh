#! /bin/sh
sudo apt update
sudo apt -y install unzip gnupg2 wget htop

# alp(1.0.3)
wget https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/local/bin/alp
sudo chown root:root /usr/local/bin/alp

# pt-query-digest(percona-toolkit:3.2)
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo apt update
sudo apt -y install percona-toolkit
