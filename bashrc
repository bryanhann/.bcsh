bashrc_main () {
    source ${BORG}/first
    _banner BORG/bashrc BEGIN 0.1
    borg() { borg_$* ; }
    borg_ () { compgen -A function | grep "borg_" ; }
    _source_all ${BORG}/lib-borg
    _run borg_gitprompt_install_monty
    _run borg_deeper -v
    _banner BORG/bashrc END
}

bashrc_main
