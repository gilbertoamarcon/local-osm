#!/bin/bash

# Tiles obtained from
# https://openmaptiles.com/downloads/planet/

# Example usage:
# ./run.sh /media/gil/storage/maps/2017-07-03_planet_z0_z14.mbtiles 8080

# Default Parameters
port=8080

# Input Args
args=("$@")
if [ "$#" -lt 1 ];then
	printf 'Invalid Arguments. Usage:\n./run.sh <path-to-map> <port-number>\n'
	exit
else
	map_dir=$(dirname $1)
	map_file=$(basename $1)
	if [ "$#" -gt 1 ];then
		port=$2
	fi
fi

com="sudo docker run --rm -d -v $map_dir:/data -p $port:80 klokantech/tileserver-gl $map_file > docker_id"
sudo docker run --rm -d -v $map_dir:/data -p $port:80 klokantech/tileserver-gl $map_file > docker_id
echo 'Server launched. Use ./kill.sh to finish server.'
