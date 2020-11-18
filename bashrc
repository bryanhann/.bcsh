source ${BORG}/first
echo
_banner BORG/bashrc BEGIN .1
borg() { borg_$* ; }
borg_ () { compgen -A function | grep "borg_" ; }
_source_all ${BORG}/lib-borg
_run borg deeper -v
_run borg_gitprompt_install_monty
_banner BORG/bashrc END

