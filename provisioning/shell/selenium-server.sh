apt-get install default-jre xvfb firefox -y
wget http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar
DISPLAY=:1 xvfb-run java -jar selenium-server-standalone-2.42.2.jar > /dev/null &
