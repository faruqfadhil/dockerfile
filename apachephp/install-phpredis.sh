#! /bin/bash

cd phpredis/
phpize
./configure
make && make install
echo 'extension=redis.so' > /etc/php5/conf.d/redis.ini
