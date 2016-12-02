#! /usr/bin/env bash

sudo apt-get update
sleep 10
sudo apt-get -y install git apache2 php-xml libapache2-mod-php php php-mysql curl php-curl zip unzip mysql-client php-gd

cd /home/ubuntu

curl -sS https://getcomposer.org/installer | php

php composer.phar require aws/aws-sdk-php

sudo systemctl enable apache2
sudo systemctl start apache2

sudo git clone git@github.com:illinoistech-itm/jpatel74.git

sudo rm -r /var/www/html/*

sudo mv /home/ubuntu/jpatel74/website/* /var/www/html
sudo mv /var/www/html/password.php /var/www

cd /var/www/html
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo php composer.phar require aws/aws-sdk-php
