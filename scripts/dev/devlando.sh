# used to start localdevelopment given lando is installed and node tools is initiated

. ~/.nvm/nvm.sh
nvm use 8

docker stop $(docker ps -aq)

#vhosts setup
#sudo nano /etc/hosts
#sudo ln -s /opt/lampp/htdocs/qss/mathanasium/web /opt/lampp/htdocs/qssmath.local

# sudo /opt/lampp/xampp stop
# sudo /opt/lampp/xampp startapache
# sudo /opt/lampp/xampp startmysql

sleep 2

lando start
pwd

#sudo mkdir /var/run/mysqld
#sudo ln -s /opt/lampp/var/mysql/mysql.sock /var/run/mysqld/mysqld.sock

#sudo mkdir /var/run/mysqld
#sudo ln -s /opt/lampp/var/mysql/mysql.sock /var/run/mysqld/mysqld.sock

# DB_NAME="qss_math"
# DB_USER=${DB_NAME}
# DB_PASS=${DB_NAME}
#
# mysql -uroot -e "CREATE DATABASE ${DB_NAME} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
# mysql -uroot -e "CREATE USER ${DB_USER}@localhost IDENTIFIED BY '${DB_PASS}';"
# mysql -uroot -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';"
# mysql -uroot -e "FLUSH PRIVILEGES;"

#wp db import sqlpathherhe.sql

# cp web/wp-configXAMPP.php web/wp-config.php

#wp search-replace '//mla-web-main-site.lndo.site' '//mlamain.local'

#gulp method
cd web/wp-content/themes/bootstrapfast
gulp
gulp watch

#browsersync direct
#browser-sync start -p 'http://qssmath.local' -f #'web/wp-content/themes/mathanasium/**/*'
