#! /bin/sh

echo "host名を入力してください"
sudo hostnamectl set-hostname $(cat -)
