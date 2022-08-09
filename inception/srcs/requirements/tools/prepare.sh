#!/bin/sh
echo "Preparing..."

if grep -q "127.0.0.1 rhoke.42.fr" /etc/hosts ; then
echo "Changing the host file"
else
echo "Changing the host file"
echo '127.0.0.1 rhoke.42.fr' >> /etc/hosts
echo '127.0.0.1 www rhoke.42.fr' >> /etc/hosts
fi
