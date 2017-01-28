#!/bin/sh
echo "Uploading to ACD"
/usr/sbin/rclone move /home/infinitum/local_sorted/tv/ gdrive:tv/ >> /home/infinitum/UploadTv.log
echo "Upload Finished"
exit
