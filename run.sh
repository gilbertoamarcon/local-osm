#!/bin/bash

# Parameters
map_dir=/media/gil/storage/maps
map_file=osm-2017-07-03-v3.6.1-north-america_us-west.mbtiles
port=8080

firefox index.html

# Backing up present working directory
hdir=$(pwd)
cd $map_dir
sudo docker run --rm -it -v $(pwd):/data -p $port:80 klokantech/tileserver-gl $map_file
cd $hdir