bashrc_main () {
    source ${BORG}/first
    _banner BORG/bashrc BEGIN 0.1
    _source_all ${BORG}/lib-borg
    _run borg_gitprompt_install_monty
    _run borg_deeper -v
    _banner BORG/bashrc END
}

bashrc_main
