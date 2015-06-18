#!/bin/bash
while read message
do
messageBody="$messageBody$messsage\n"
done
{
	echo helo ucr.edu
	sleep 1;
	echo mail from: $2
	sleep 1
	echo rcpt to: $1
	sleep 1
	echo data
	sleep 1
	echo Subject: This is spam!
	sleep 1
	echo -e $messageBody
	sleep 1
	echo .
	sleep 1
	echo quit
	sleep 1
} 
