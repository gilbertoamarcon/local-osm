#!/bin/bash

docker_id=$(cat tmp/docker_id) > /dev/null 2>&1
sudo docker kill $docker_id > /dev/null 2>&1
rm tmp/docker_id > /dev/null 2>&1
echo 'Server finished.'
