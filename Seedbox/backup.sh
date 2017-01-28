#!/bin/sh
echo "Starting full backup"

tar -cvpf /home/infinitum/local_sorted/backups/fullbackup.tar --directory=/ --exclude=mnt --exclude=proc --exclude=tmp --exclude=run --exclude=var/spool --exclude=home/infinitum/finished --exclude=home/infinitum/downloads --exclude=home/infinitum/sorted --exclude=home/infinitum/local_sorted --exclude=home/infinitum/acd_sorted --exclude=home/infinitum/drone .
gzip /home/infinitum/local_sorted/backups/fullbackup.tar
/usr/sbin/rclone move /home/infinitum/local_sorted/backups/ amazon:backups/
echo "Backup complete!"
