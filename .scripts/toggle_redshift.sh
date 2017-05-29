#
#!bin/bash
#

if pgrep "redshift" > /dev/null
then
	pkill redshift
else
	redshift &
fi
