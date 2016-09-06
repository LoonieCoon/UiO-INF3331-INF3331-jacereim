#!/bin/bash

while true; do
	#
	clear
	if [ "$0" == "--AMPM" ]; then
		time=$(date +"½I:%M:%S %p")
	else
		time=$(date +"%H:%M:%S")
	fi
	echo "$time"
	sleep 1
done
