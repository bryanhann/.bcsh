#[ -z BORG ] && export BORG=$PWD
export BORG_BUILD=${BORG}/.build
export POETRY_HOME=${BORG_BUILD}/poetry
mkdir -p ${BORG_BUILD}
