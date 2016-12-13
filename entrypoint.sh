#!/bin/sh

service mysqld start
mysql -u root -e "GRANT ALL PRIVILEGES ON concrete5.* TO concrete5@localhost IDENTIFIED BY 'concrete5';"
if [ $? -eq 0 ]; then
	mysql -u root -e "create database concrete5; FLUSH PRIVILEGES;"
fi

exec "$@"
