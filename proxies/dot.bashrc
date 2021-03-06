#!/bin/bash
#This shebang is for synax only. Do not make executable!

mroot=${BORG}/modules

for module in $(/bin/ls ${mroot}|grep ^[0-9]|sort); do
    for script in $(/bin/ls ${mroot}/${module}|grep ^[0-9]|sort); do
      borg_source ${mroot}/${module}/${script}
   done
done
