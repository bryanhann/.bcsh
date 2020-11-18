bashrc_once () {
    [ -z "${BORG_RPID}" ] || return 0
    __run__ __export__ BORG_RPID $$
    __run__ __export__ PATH      ${PATH}:~/.local/bin
}

bashrc_main () {
    source ${BORG}/dunder.sh
    __banner__ BORG/bashrc BEGIN 0.1
    bashrc_once
    __src__ ${BORG}/lib-borg
    __run__ borg_gitprompt_install_monty
    __run__ borg_deeper -v
    __banner__ BORG/bashrc END
}

bashrc_main
