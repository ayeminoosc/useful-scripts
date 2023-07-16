#!/usr/bin/bash
echo "$(date) syncing" >> /var/log/sync.log
echo "$(date) $1" >> /var/log/sync.log
echo "$(date) $2" >> /var/log/sync.log
rsync -a -v $1 $2 --delete >>  /var/log/sync.log
echo "$(date) done" >> /var/log/sync.log