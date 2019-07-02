#!/bin/bash
sudo add-apt-repository 'deb     https://qgis.org/ubuntu-ltr bionic main'
sudo add-apt-repository 'deb-src https://qgis.org/ubuntu-ltr bionic main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45 &&
sudo apt update && sudo apt install qgis python3-qgis qgis-plugin-grass -y
