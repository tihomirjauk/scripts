echo "Enter database name:"
read DB_NAME

echo "User name:"
read DB_USER

echo "User pass:"
read DB_PASS

# create database
mysql -e "CREATE DATABASE ${DB_NAME} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';"
mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

echo "Database ${DB_NAME} with user ${DB_USER} created."