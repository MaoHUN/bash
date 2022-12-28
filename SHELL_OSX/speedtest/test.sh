#!/bin/sh
#
# OSX version
#
#resoult folder is exist?
DIR="resault"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Folder is exist ${DIR}... start SpeedTEST..." && cd $DIR
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} folder not found. Creating..." && mkdir $DIR && cd $DIR
  echo "Starting SpeedTEST"
fi
#Get ssid name
ssid_name=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`
#Get current date
now=$(date +"%Y-%m-%d")
#merge two variable to create a filename
name=$ssid_name"-"$now
#use speedtest then push the resault to a csv file (server id=SzerverPlex.HU Kft)
speedtest --server-id=4246 --progress=no -u auto-binary-bits >> $name.csv
echo ""
echo "SpeedTEST is done."
echo ""