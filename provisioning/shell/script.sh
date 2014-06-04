apt-get install php5-cli php5-curl -y
apt-get install default-jre xvfb firefox -y
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
cd /vagrant
composer install
wget http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar
DISPLAY=:1 xvfb-run java -jar /vagrant/selenium-server-standalone-2.42.2.jar > /dev/null &
