echo
echo ++PROFILE
PATH+=:~/.local/bin
source ${DOTBCSH}/lib-bcsh/activate
bcsh deeper -v
echo --PROFILE
bash
