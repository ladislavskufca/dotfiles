#!/bin/bash

#disable autostart
#sudo launchctl unload -w /Library/LaunchDaemons/com.edb.launchd.postgresql-9.5.plist

#manual start
sudo su postgres
cd /Library/PostgreSQL/9.5/bin
./pg_ctl -D /Library/PostgreSQL/9.5/data start