/usr/sbin/rclone sync  gdrive:tv/ amazon:tv/ --transfers=20 --size-only
/usr/sbin/rclone sync  gdrive:movies/ amazon:movies/ --transfers=20 --size-only
/usr/sbin/rclone sync  gdrive:backups/ amazon:backups/ --transfers=20 --size-only
