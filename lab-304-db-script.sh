apt update
apt -y upgrade
apt install -y apache2
apt install -y wget
apt install -y unzip
apt-get install -y mysql-server
apt install curl
apt install -y php libapache2-mod-php php-mysql
apt install -y curl php-cli php7.2-xml php-mbstring git unzip
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
cd /var/www/html/
rm index.html
wget https://raw.githubusercontent.com/ahmadzahoory/az304/master/lab-304-db-code.zip
unzip lab-304-db-code.zip
systemctl restart apache2.service