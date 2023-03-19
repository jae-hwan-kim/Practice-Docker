#!/bin/sh

# service mysql start
# 	echo "0"

# if [ ! -e /var/lib/mysql/mariadb ]; then
# 	echo "1"
# 	mysql -u root -e "CREATE DATABASE IF NOT EXISTS mariadb" -p1234
# 	echo "2"
# 	mysql -u root -e "CREATE USER IF NOT EXISTS 'jaekim'@'%' IDENTIFIED BY '1234'" -p1234
# 	echo "3"
# 	mysql -u root -e "GRANT ALL PRIVILEGES ON mariadb.* TO 'jaekim'@'%'; FLUSH PRIVILEGES;" -p1234
# 	echo "4"
# 	mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '5678'" -p1234
# 	echo "5"
# 	# mysqladmin -uroot -p1234 shutdown -p1234
# 	pkill mariadb
# fi
# 	echo "6"

# exec "mysqld_safe"

service mysql start
if [ ! -e /var/lib/mysql/$MYSQL_DATABASE ]; then
	mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE" -p$MYSQL_PASSWORD
	mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'" -p$MYSQL_PASSWORD
	mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'; FLUSH PRIVILEGES;" -p$MYSQL_PASSWORD
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;" -p$MYSQL_PASSWORD
fi
mysqladmin -u$MYSQL_ROOT -p$MYSQL_ROOT_PASSWORD shutdown

exec mysqld_safe