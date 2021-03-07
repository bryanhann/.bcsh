[ "$0" == "./install.sh" ] || { echo 'try ./install.sh'; exit; }
export PATH=${PWD}/bin:${PATH}
. borg:insitu .install ./install.sh $*
