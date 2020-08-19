#!/bin/sh
sudo apt update
sudo apt install -y apache2 wget unzip curl
sudo apt install -y php libapache2-mod-php php-mysql
sudo apt install -y curl php-cli php7.2-xml php-mbstring git
sudo apt install -y php-pear php-dev libzstd-dev
sudo apt install -y mysql-server
sudo pecl install igbinary
yes 'y' | sudo pecl install redis
sudo bash -c "echo 'extension=igbinary.so' >> /etc/php/7.2/apache2/php.ini"
sudo bash -c "echo 'extension=redis.so' >> /etc/php/7.2/apache2/php.ini"
sudo bash -c "echo 'extension=igbinary.so' >> /etc/php/7.2/cli/php.ini"
sudo bash -c "echo 'extension=redis.so' >> /etc/php/7.2/cli/php.ini"
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo composer require guzzlehttp/guzzle --working-dir=/var/www/html
cd /var/www/html/
sudo rm index.html
sudo wget https://raw.githubusercontent.com/ahmadzahoory/az304/master/lab-304-09-01-code.zip
sudo unzip lab-304-09-01-code.zip
sudo systemctl restart apache2.service
