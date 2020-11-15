echo BEGIN:[${BORG}/profile]
set -x
export BORG_RPID=$$
PATH+=:~/.local/bin
set +x
echo END:[${BORG}/profile]
