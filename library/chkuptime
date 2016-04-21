#!/bin/bash

# The module checks for system uptime of the target machine.
# It returns a JSON output since an Ansible module should
# output a Valid JSON.

if [ -f "/proc/uptime" ]; then
    uptime=`cat /proc/uptime`
    uptime=${uptime%%.*}
    days=$(( uptime/60/60/24 ))
    hours=$(( uptime/60/60%24 ))
    uptime="$days days, $hours hours"
else
    uptime=""
fi

echo -e "{\"uptime\":\""$uptime"\"}"
