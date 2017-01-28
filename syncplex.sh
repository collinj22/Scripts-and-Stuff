#!/bin/bash

#Sync all 3 servers movies
/usr/local/bin/plex-sync ME5pMQBocTm7k98omWJS@f873bd3f8e567e07-eda9bbd156174a57bfe753478902b200.ams.plex.services:80/3 \
ME5pMQBocTm7k98omWJS@plex.plexservant.com:32400/1 \
ME5pMQBocTm7k98omWJS@seed.plexservant.com:32400/1

sleep 15s # Waits 15 seconds

#Sync all 3 servers tv shows
/usr/local/bin/plex-sync ME5pMQBocTm7k98omWJS@f873bd3f8e567e07-eda9bbd156174a57bfe753478902b200.ams.plex.services:80/4 \
ME5pMQBocTm7k98omWJS@plex.plexservant.com:32400/2 \
ME5pMQBocTm7k98omWJS@seed.plexservant.com:32400/2
