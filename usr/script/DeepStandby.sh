#!/bin/sh
#DESCRIPTION=This script Shoutdown the box
wget -q -O - http://127.0.0.1/web/powerstate?newstate=1
echo ""
exit 0