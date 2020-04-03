#!/bin/bash
chown -R $SERVER_USER:$SERVER_USER /lfs
chown -R $SERVER_USER:$SERVER_USER /lfsconfig
chown -R $SERVER_USER:$SERVER_USER /ssl

su -p $SERVER_USER -c /home/$SERVER_USER/run.sh
