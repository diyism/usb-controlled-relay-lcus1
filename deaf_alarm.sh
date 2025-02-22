#!/bin/bash

HEX_CODE_ON='\xA0\x01\x01\xA2'
HEX_CODE_OFF='\xA0\x01\x00\xA1'

action="$1"
#serdev="$2"
serdev="/dev/ttyUSB0"

if [ "$action" = 1 ]; then
    echo 'on'
    sudo /bin/bash -c "echo -n -e '$HEX_CODE_ON' > $serdev"
elif [ "$action" = 0 ]; then
    echo 'Off'
    sudo /bin/bash -c "echo -n -e '$HEX_CODE_OFF' > $serdev"
else
    echo 'Click'
    sudo /bin/bash -c "echo -n -e '$HEX_CODE_ON' > $serdev"
    sleep 1
    sudo /bin/bash -c "echo -n -e '$HEX_CODE_OFF' > $serdev"
fi
