#!/bin/sh

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout ${CERTS_KEY} \
        -out ${CERTS_CRT} \
        -subj "/C=RF/ST=RT/L=KAZAN/O=SCHOOL21/CN=DDUCK"

#sed -i "s|domain_name_tmp|${DOMAIN_NAME}|" /etc/nginx/conf.d/default.conf
#sed -i "s|cert_tmp|'${CERTS_CRT}'|" /etc/nginx/conf.d/default.conf
#sed -i "s|cert_key_tmp|'${CERTS_KEY}'|" /etc/nginx/conf.d/default.conf

exec nginx -g "daemon off;"