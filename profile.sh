source $BORG/common.sh
export PATH=$PATH:${HOME}/.local/bin
export PATH=$PATH:${POETRY_HOME}/bin

## Install poetry to the external folder $HOME/.local/bin/.poetry and activate it.
#mkdir -p ${BORG}/.build
#export POETRY_HOME=${BORG}/.build/poetry
#[ -d ${POETRY_HOME} ] || curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
#source ${POETRY_HOME}/env
