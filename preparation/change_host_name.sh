#! /bin/sh

echo "host名を入力してください"
read HOSTNAME
sudo hostnamectl set-hostname $HOSTNAME
