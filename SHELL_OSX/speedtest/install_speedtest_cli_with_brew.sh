#!/bin/sh
#from https://www.speedtest.net/apps/cli
#First you need to install brew
#Second give permission to this file chmod +x install_speedtest_cli.sh
brew tap teamookla/speedtest
brew update --auto-update
#brew update
# Example how to remove conflicting or old versions using brew
# brew uninstall speedtest --force
# brew uninstall speedtest-cli --force
brew install speedtest --force