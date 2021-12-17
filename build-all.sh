#!/bin/bash

set -e 

#docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:cli .
docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:apache apache/
#docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:fpm fpm/

#docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:modules-cli with-modules
#docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:modules-apache with-modules/apache
#docker build --rm -t docker.dublin.communicraft.com:5000/php-5.3:modules-fpm with-modules/fpm

if [ "$1" = "push" ]; then
#  for tag in cli apache fpm; do
  for tag in apache; do
    docker push docker.dublin.communicraft.com:5000/php-5.3:$tag
    # docker push docker.dublin.communicraft.com:5000/php-5.3:modules-$tag
  done
fi
