__note__ () {
  echo "$(__trace__ 1 8 --ignore-source)" $*
}

__path_append__() {
   export PATH=${PATH}:$1
}

__once__ () {
    [ -z "${BORG_RPID}" ] || return 0
    $*
}

__end_once__ () {
  __once__ __run__ __export__ BORG_RPID $$
}

bashrc_main () {
    source ${BORG}/dunder.sh
    __banner__ BORG/bashrc BEGIN 0.1
    __src__ ${BORG}/lib-borg
    __src__ ${BORG}/lib-misc
    __run__ borg_deeper -v
    __end_once__
    __banner__ BORG/bashrc END
}

bashrc_main
