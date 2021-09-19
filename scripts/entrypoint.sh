#!/usr/bin/env bash

echo """
## no access to this folder

# Apache 2.4
<IfModule mod_authz_core.c>
    Require all denied
</IfModule>

# Apache 2.2
<IfModule !mod_authz_core.c>
    Order Allow,Deny
    Deny from all
</IfModule>
""" > /var/www/html/data/.htaccess

chown -R www-data:www-data /var/www/html
chmod ug+rw /var/www/html/data

apache2-foreground
