#!/bin/bash
#This shebang is for synax only. Do not make executable!
for script in $(/bin/ls -1 ${BORG}/modules/[0-9]* | sort ); do
    echo . ${script}
    source ${script}
done
