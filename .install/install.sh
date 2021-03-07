[ "$0" == "./install.sh" ] || { echo 'try ./install.sh'; exit; }
ARGS=$*
opt () { borg-hasoption $1 $ARGS; return $?; }
vard=${HOME}/.local/var/myborg

remove_vard () {
    cat ./warning.txt
    opt -y || { read; read; read; }
    rm -rf ${vard}
    echo [${vard}] has been removed
}

copyfiles () {
    for name in $(/bin/ls files); do
        src=files/${name}
        dst=${HOME}/.${name}
        dir=${HOME}/.back
        borg-backup ${dst} ${dir}
        echo overwriting: ${dst}
        cp ${src} ${dst}
    done
}

write_index () {
    mkdir -p ${vard}
    index=${vard}/current.txt
    echo $(dirname $PWD) > ${index}
    echo index : [${index}] is [$(cat $index)].
}

case ${1}. in
    install.)
        opt -v && remove_vard
        copyfiles
        write_index
        cat ./outro.txt
        ;;
    *)
        cat ./usage.txt
        ;;
esac

