#!/usr/bin/env bash


DB_NAME=$(grep DB_NAME .env | cut -d '=' -f2)
DB_USER=$(grep DB_USER .env | cut -d '=' -f2)
DB_PASSWORD=$(grep DB_PASSWORD .env | cut -d '=' -f2)

echo "Importing to DB ${DB_NAME} .."
mysql -u"${DB_USER}" -p"${DB_PASSWORD}" -h"localhost" "${DB_NAME}" < ./sql/"${DB_NAME}-full".sql
