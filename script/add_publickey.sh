#!/bin/bash
sudo mkdir -p /home/isucon/.ssh
cat /vagrant/sshkey/isucon-dev.pem.pub >> /home/isucon/.ssh/authorized_keys
