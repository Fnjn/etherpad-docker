FROM ubuntu:18.04

apt-get update
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
apt-get install git -y mysql-server nodejs

cd ~
git clone --branch master https://github.com/ether/etherpad-lite.git

COPY settings.json etherpad/

etherpad/bin

CREATE USER 'etherpaduser'@'localhost' IDENTIFIED BY 'PASSWORD';
CREATE DATABASE `etherpad_lite_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON etherpad_lite_db. * TO 'etherpaduser'@'localhost';
FLUSH PRIVILEGES;

export NODE_ENV=production

plugin https://github.com/ether/ep_mathjax
