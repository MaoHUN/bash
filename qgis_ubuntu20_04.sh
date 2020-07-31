#!/bin/bash
sudo apt-get install gnupg software-properties-common -y &&
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51F523511C7028C3 &&
sudo add-apt-repository "deb     https://qgis.org/ubuntu `lsb_release -c -s` main" -y &&
sudo apt-get update &&
sudo apt-get install qgis qgis-plugin-grass -y
