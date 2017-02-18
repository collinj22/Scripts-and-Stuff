#!/bin/sh

/usr/sbin/rclone move --bwlimit 10M /home/infinitum/local_sorted/tv/ gdrive:tv/
/usr/sbin/rclone move --bwlimit 10M /home/infinitum/local_sorted/movies/ gdrive:movies/
 exit

