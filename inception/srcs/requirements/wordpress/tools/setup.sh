sleep 10;

if [ ! -f /var/www/wordpress/wp-config.php ]; then
	wp core --allow-root download --force
	sleep 5;
	while [ ! -f /var/www/wordpress/wp-config.php ]; do
	 wp core config --allow-root --dbname=wordpress --dbuser=$DBASE_LOGIN --dbpass=$DBASE_PSWD --dbhost=mariadb:3306
	done
	wp core install --allow-root --url='rhoke.42.fr' --title='Roosevelt Hoke Inception' --admin_user=$WP_USER_LOGIN --admin_password=$WP_USER_PSWD --admin_email="rhoke@student.21-school.ru" --path='/var/www/wordpress';
fi
php-fpm7.3 --nodaemonize
