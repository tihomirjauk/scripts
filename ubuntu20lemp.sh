#!/bin/bash

cd ~

sudo apt-get update
sudo apt-get upgrade --yes

# utils
sudo apt-get install curl git unzip zip --yes

# nginx
sudo apt-get install nginx --yes

# mysql
sudo apt-get install mariadb-server --yes

# php
sudo apt-get install php7.4 php7.4-fpm --yes
sudo apt-get install php7.4-cli php7.4-mbstring php7.4-dom --yes

# composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 
'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# python
sudo apt-get install python3
sudo apt-get install python3-pip --yes

