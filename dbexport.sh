#!/usr/bin/env bash
DB_USER=$(sed -nr  "s/(define\( 'DB_USER', ')(.*)(' \));/\2/p" ../wp-config.php)
DB_NAME=$(sed -nr  "s/(define\( 'DB_NAME', ')(.*)(' \));/\2/p" ../wp-config.php)
DB_PASSWORD=$(sed -nr  "s/(define\( 'DB_PASSWORD', ')(.*)(' \));/\2/p" ../wp-config.php)
_now=$(date "+%H%M%S__%d%m%Y")


echo "Exporting from DB ${_now} .."

mysqldump -u"${DB_USER}" -p"${DB_PASSWORD}" "${DB_NAME}" > ../databases/"${_now}-${DB_NAME}_min".sql
