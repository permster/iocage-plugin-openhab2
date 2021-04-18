#!/bin/sh

# enable service
sysrc openhab2_enable="YES"
#prefer IPv4 because of some multicast problems with freeBSD
sysrc openhab2_java_opts="-Djava.net.preferIPv4Stack=true"

# Start the service
service openhab2 start  2>/dev/null

echo "Please follow the Installation Instructions at https://www.openhab.org/docs/tutorial/1sttimesetup.html" > /root/PLUGIN_INFO