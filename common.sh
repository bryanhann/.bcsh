_export () { export $1=$2; }
inpath () { ${BORG}/notbin/inpath.py $*; }
addpath () {
  inpath $1 && return
  echo append to path: $1
  export PATH=$PATH:$1
}
export BORG_BUILD=${BORG}/.build
mkdir -p ${BORG_BUILD}
