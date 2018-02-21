#!/bin/sh

# create empty index.html if html directory does not exists

if [ ! -d /web/html ]; then
  mkdir /web/html
  echo "<html>
  <body>
    <h1>It Works!</h1>
    Apache/php5 on Alpine with Docker container <a href=https://hub.docker.com/r/keithy/alpine-apache-php56/>keithy/alpine-apache-php56</a>
    <br>BUILD : <?php echo file_get_contents('/etc/BUILD'); ?>
    <br>PHP version <?php echo phpversion(); ?>
  </body>
</html>" > /web/html/index.php
  chown -R apache.apache /web/html
fi