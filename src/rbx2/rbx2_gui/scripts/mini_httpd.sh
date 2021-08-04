#!/bin/sh 

# Run the mini_httpd webserver on the port defined in the
# mini_httpd.conf file and set the document directory to the current
# directory

PID=`pidof mini_httpd`

if [ ! -z $PID ]; then
    kill $PID
fi

sleep 1

echo "Launching mini_httpd..."

/usr/sbin/mini_httpd -C `rospack find rbx2_gui`/scripts/mini_httpd.conf -d `rospack find rbx2_gui`