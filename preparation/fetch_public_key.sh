#! /bin/sh

if [ ! -e ~/.ssh ]; then
  mkdir ~/.ssh/
  sudo chmod 700 ~/.ssh
fi
curl https://github.com/NoharaMasato.keys >> ~/.ssh/authorized_keys
curl https://github.com/katokiminori.keys >> ~/.ssh/authorized_keys
curl https://github.com/yoshi0202.keys >> ~/.ssh/authorized_keys

