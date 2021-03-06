[ "$0" == "./install.sh" ] || { echo 'try ./install.sh'; exit; }

mycopy () {
    local backups=${HOME}/.backups
    local name=$1
    local src=files/${name}
    local dst=${HOME}/.${name}
    local backup0=${backups}/orig.${name}
    local backup1=${backups}/$(date "+%Y-%m-%d-T-%H-%M-%S").${name}
    mkdir -p ${backups}
    [ ! -f ${dst}     ] && echo creating ${dst} && cp ${src} ${dst} && return
    cmp -s $src $dst    && echo ignoring ${dst}                     && return
    [ ! -f ${backup0} ] && cp $dst $backup0
    true                && cp $dst $backup1
    true                && echo replacing ${dst} && cp ${src} ${dst} && return
}

newborg=$(dirname $PWD)
for name in $(/bin/ls files); do mycopy $name; done
mkdir -p    ${HOME}/.local/var/myborg
echo ${newborg} > ${HOME}/.local/var/myborg/current.txt
