[ "$0" == "./install.sh" ] || { echo 'try ./install.sh'; exit; }
pushd ./.install
./install.sh
popd
