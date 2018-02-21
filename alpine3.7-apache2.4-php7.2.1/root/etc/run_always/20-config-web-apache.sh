#!/bin/sh

# popolate /web if empty

if [ ! -d /web/logs ]; then
  mkdir /web/logs
  chown -R apache.apache /web/logs
fi

if [ ! -f /web/config/httpd.conf ]; then
  cp -R /etc/apache2/* /web/config/
  chown -R apache.apache /web/config
fi

if [ ! -d /web/modules ]; then
  ln -s /usr/lib/apache2 /web/modules
fi

if [ ! -d /web/run ]; then
  mkdir /web/run
  mkdir /web/run/apache2
fi

if [ ! -d /web/cgi-bin ]; then
  mkdir /web/cgi-bin
  chown -R apache.apache /web/cgi-bin
fi

if [ ! -d /web/internal ]; then
  mkdir /web/internal
  cp -RpP /etc/apache2/internal/* /web/internal/
  chown -R apache.apache /web/internal
fi
