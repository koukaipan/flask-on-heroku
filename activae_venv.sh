#!/bin/bash
#create venv by "python3 -m venv venv"
if [ $0 != "bash" ]; then
	echo "ERROR please use 'source $0'"
	exit 1
fi
echo "ok"
source venv/bin/activate
