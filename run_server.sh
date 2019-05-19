#!/bin/sh
/bin/sed -i "s/RANCHER_HOST/${RANCHER_HOST}/" /etc/nginx/conf.d/rancher_proxy.conf
/bin/sed -i "s/RANCHER_PORT/${RANCHER_PORT}/" /etc/nginx/conf.d/rancher_proxy.conf
rm /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
