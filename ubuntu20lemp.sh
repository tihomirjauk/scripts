#!/bin/bash

# append aliases to user profile
cat aliases.sh &>> ~/.profile

# switch to home folder
cd ~

sudo apt-get update
sudo apt-get upgrade --yes

# utils
sudo apt-get install curl git zip unzip --yes

# nginx
sudo apt-get install nginx --yes

# mysql
sudo apt-get install mariadb-server --yes

# php 7.4
sudo apt-get install php7.4 php7.4-fpm --yes
sudo apt-get install php7.4-common php7.4-cli php7.4-mbstring php7.4-dom php7.4-gd --yes
sudo apt-get install php7.4-mysql php7.4-bcmath php7.4-zip php7.4-imagick --yes

# composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# python 3
sudo apt-get install python3
sudo apt-get install python3-pip --yes
