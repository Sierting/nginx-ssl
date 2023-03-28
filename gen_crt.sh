#!/bin/sh

if [ ! -d /etc/nginx/cert ]; then
    mkdir -p /etc/nginx/cert
fi

cd /etc/nginx/cert

if [ ! -f cert.crt ]; then
    openssl req -new -newkey rsa:2048 -sha256 -nodes -out cert.csr -keyout cert.key \
    -subj "/C=CN/ST=Shandong/L=Shandong/O=Example Inc./OU=Web Security/CN=127.0.0.1"
    openssl x509 -req -days 7300 -in cert.csr -signkey cert.key -out cert.crt
fi
