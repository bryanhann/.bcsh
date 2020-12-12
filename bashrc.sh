_bashrc_ () {
    source ${BORG}/dunder.sh
    __banner__ BORG/bashrc BEGIN 0.1
    __src__ ${BORG}/lib-borg
    __src__ ${BORG}/lib-misc
    __run__ borg_deeper -v
    __end_once__
    __banner__ BORG/bashrc END
}

_bashrc_
