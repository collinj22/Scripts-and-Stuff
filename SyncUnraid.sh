#!/bin/bash
rclone sync  gdrive:tv/ /mnt/user/Media/Tv\ Shows/ --bwlimit 10M --size-only
rclone sync  gdrive:movies/ /mnt/user/Media/Movies/ --bwlimit 10M --size-only
