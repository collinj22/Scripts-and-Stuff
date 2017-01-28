#!/bin/sh
echo "Uploading to ACD"
/usr/sbin/rclone move /home/infinitum/local_sorted/movies/ gdrive:movies/
echo "Upload Finished"
exit
