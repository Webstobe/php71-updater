#!/bin/bash
RED="\033[0;31m"
GREEN="\033[0;32m"
ORANGE="\033[0;33m"
NC="\033[0m"

# change directory:
cd /var/www
# chown /var/www:
chown -R www-data:www-data /var/www

echo -e "${GREEN}===================================${NC}"
echo -e "${GREEN}==      CONTAINER IS READY       ==${NC}"
echo -e "${GREEN}===================================${NC}"

# show PHP-Version:
php -v

exec "$@"
#/bin/bash