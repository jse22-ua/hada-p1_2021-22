#
# Regular cron jobs for the piedrapapeltijera package
#
0 4	* * *	root	[ -x /usr/bin/piedrapapeltijera_maintenance ] && /usr/bin/piedrapapeltijera_maintenance
