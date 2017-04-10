#!/bin/bash

[ ! -f "$APACHE_PID_FILE" ] || rm -f $APACHE_PID_FILE

chmod +x /init.sh
/init.sh

chown -R www-data: /var/www/
/usr/sbin/apache2 -D FOREGROUND
