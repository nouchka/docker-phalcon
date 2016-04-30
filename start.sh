#!/bin/bash

chmod +x /init.sh
/init.sh

chown -R www-data: /var/www/
/usr/sbin/apache2 -D FOREGROUND
