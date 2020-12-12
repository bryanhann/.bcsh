#!/bin/bash

__once__ () {
    [ -z "${BORG_RPID}" ] || return 0
    $*
}

__end_once__ () {
    __once__ __run__ __export__ BORG_RPID $$
}

__path_append__() {
   export PATH=${PATH}:$1
}

__export__ () {
    export $1=$2
}

__note__ () {
  echo "$(__trace__ 1 8 --ignore-source)" $*
}

__log__ () {
  echo "$(__trace__ 1 8 --ignore-source)" $*
}

__run__ () {
  echo $(__trace__ 1 8 --ignore-source) $*
  $*
}

__short__ () {
  echo $(basename $(dirname $1))/$(basename $1)
}

__src__ () {
  # source all numbered file is directory $1.
  for f in $(ls -1 ${1}/[0-9][0-9][0-9]*); do
    __run__ source $f
  done
}

__trace__ () {
    local acc=
    local part=
    for ii in $(seq $1 $2); do
        part=${FUNCNAME[${ii}]}
        [ -z "${part}" ] && break
        [ "${part}" = "source" ] && [ "$3" = "--ignore-source" ] && break
        acc="[${part}]>>$acc"
    done
    echo ">>$acc"
}

__github__ () {
    local src=http://github.com/$1
    local dst=${BORG}/.repo/github/$1
    [ -d ${dst} ] || git clone $src $dst 2> /dev/null > /dev/null
    [ -d ${dst} ] && echo ${dst}
    [ -d ${dst} ] && return 0
    return 1
}

__banner__ () {
    banner=">>>>>>>>>>>>>>>>[$1]"
    #delay=$3
    [ -z "${delay}" ] && delay=0
    printf "${banner} "
    for ii in 3 2 1; do
        printf "."
        [ -z $3 ] || sleep $3
    done
    printf "$2\n"
}

