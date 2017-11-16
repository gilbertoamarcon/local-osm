#!/bin/bash

docker_id=$(cat docker_id) > /dev/null 2>&1
sudo docker kill $docker_id > /dev/null 2>&1
rm docker_id > /dev/null 2>&1
echo 'Server finished.'
