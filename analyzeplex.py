#!/usr/bin/env python3
from subprocess import call
import os
import requests
import sqlite3
import sys

conn = sqlite3.connect('/root/docker/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases/com.plexapp.plugins.library.db')

c = conn.cursor()
c.execute('select metadata_item_id from media_items where bitrate is null')
items = c.fetchall()
conn.close()

print("To analyze: " + str( len(items) ))

for row in items:
os.system('LD_LIBRARY_PATH=/usr/lib/plexmediaserver PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR=/root/docker/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases/Plex\ Media\ Scanner -a -o ' + str(row[0]))
os.system('sleep 1')
print(str(row[0]))