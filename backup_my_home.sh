#!/bin/sh
OF=${USER}_backup_$(date +%Y%m%d).tar.gz
tar -czf $OF ${HOME}