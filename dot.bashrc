#!/bin/bash
#This shebang is for synax only. Do not make executable!
for script in $(/bin/ls -1 ${BORG}/[0-9]* | sort ); do
    echo sourcing $script ...
    source $script
done
