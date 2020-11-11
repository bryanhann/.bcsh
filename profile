echo
echo ++PROFILE
PATH+=:~/.local/bin
source ${DOTBCSH}/lib-bcsh/activate
bcsh deeper
echo --PROFILE
bash
