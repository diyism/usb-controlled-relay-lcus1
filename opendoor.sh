#!/bin/bash

HEX_CODE_ON='\xA0\x01\x01\xA2'
HEX_CODE_OFF='\xA0\x01\x00\xA1'

serdev="/dev/ttyUSB1"

echo 'open door'
sudo /bin/bash -c "echo -n -e '$HEX_CODE_ON' > $serdev"
sleep 8
sudo /bin/bash -c "echo -n -e '$HEX_CODE_OFF' > $serdev"
