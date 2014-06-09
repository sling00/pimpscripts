#!/bin/bash
THELINE='echo -====================================================================-'
SCLS=`screen -ls | grep -c PM-miner`

if  [ $SCLS -ge "1" ]; then
		screen -dr PM
	else 
		$THELINE
		echo -e '\E[00;31m'"\033[1m	ERROR: No PM-miner screen found, miner is not running.\033[0m"
		echo -e '\E[00;31m'"\033[1m	ERROR: Try to test mining with 'test' or 'manualstart'\033[0m"
		$THELINE
		exit 1
fi