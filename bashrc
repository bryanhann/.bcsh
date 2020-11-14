source $BORG/first
bmain () {
	echo
	_log echo ++BASHRC

	source ${BORG}/lib-borg/activate
	source ${BORG}/runonce

	_run borg deeper -v
	_log --BASHRC
	echo
}

bmain
