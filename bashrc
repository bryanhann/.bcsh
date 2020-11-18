bashrc_once () {
    [ -z "${BORG_RPID}" ] || return 0
    _run _export BORG_RPID $$
    _run _export PATH      ${PATH}:~/.local/bin
}

bashrc_main () {
    source ${BORG}/first
    _banner BORG/bashrc BEGIN 0.1
    bashrc_once
    _source_all ${BORG}/lib-borg
    _run borg_gitprompt_install_monty
    _run borg_deeper -v
    _banner BORG/bashrc END
}

bashrc_main
