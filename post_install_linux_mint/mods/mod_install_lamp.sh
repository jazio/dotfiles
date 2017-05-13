#!/usr/bin/env bash
#############################################################
# Scope: Install lamp on linux mint.
# Author: @jazio
#############################################################

# debug on/off.
# set -x


function mod_install_lamp 
{
	## declare an array variable
declare -a arr=("git" 
                "apache2" 
                "mariadb-server" "mariadb-client" "mariadb.common"
                "php7.0"
                "php7.0-mysql" "php7.0-curl" "php7.0-cgi"
                )

## now loop through the above array
for i in "${arr[@]}"
do
   echo "Installing $i"
   apt-get install $i
   # or do whatever with individual element of the array
done

#Install composer.
#@todo Check if php is installed.
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"


mv composer.phar /usr/local/bin/composer
}