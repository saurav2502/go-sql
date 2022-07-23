#! /bin/bash

echo "Running MYSQL Container..."
docker run -d -i \
    -p 3306:3306 \
    -v data:/var/log/mysql \
    -e MYSQL_DATABASE=creative \
    -e MYSQL_USER=admin \
    -e MYSQL_PASSWORD=admin \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_GENERAL_LOG=1 \
    --name MYSQL \
    -t mysql:5.7

echo "Completed"

