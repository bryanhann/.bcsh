#!/bin/sh
source ${BORG}/first ; echo ; _banner BORG/profile BEGIN 0.3

set -x
export BORG_RPID=$$
PATH+=:~/.local/bin
set +x

_banner BORG/profile FINISHED
