echo
echo ++PROFILE
PATH+=:~/.local/bin
source ${BORG}/lib-borg/activate
borg deeper -v
echo --PROFILE
bash
