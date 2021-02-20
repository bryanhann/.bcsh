_export () {
  export $1=$2
 }

export BORG_BUILD=${BORG}/.build
mkdir -p ${BORG_BUILD}

export POETRY_HOME=${BORG_BUILD}/poetry
[ -d ${POETRY_HOME} ] || curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

_export __BH0__           ~/.bh0
_export __BH0_ACC__       ${HOME}/.bh0.acc
_export __BH0_RAW__       ${HOME}/.bh0.raw
_export __BH0_LOCAL__     ${HOME}/.bh0.local
_export __BH0_HTTP__      ${HOME}/.bh0.http
_export __BH0_URL_GH__    https://github.com
_export __BH0_DST_GH__    ${__BH0_HTTP__}/github.com
_export __BH0_URL_BH__    ${__BH0_URL_GH__}/bryanhann
_export __BH0_DST_BH__    ${__BH0_DST_GH__}/bryanhann
