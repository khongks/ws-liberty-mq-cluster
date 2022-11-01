#!/bin/bash

# get message
export MQSERVER="APP.SVRCONN/TCP/localhost(1416)"
export MQSAMP_USER_ID=app

while true
do
	echo Wait for message
	printf "%s\n%s\n\n" passw0rd MELBOURNE | /opt/mqm/samp/bin/amqsgetc KANGAROO.Q
	Sleep 1
done