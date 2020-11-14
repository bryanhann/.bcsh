source $BORG/first
borg() { borg_$* ; }
borg_ () { compgen -A function | grep "borg_" ; }
	
bmain () {
  _log  ++BASHRC
  _source_all ${BORG}/lib-borg
  _source_once ${BORG}/runonce
  _run borg deeper -v
  _log --BASHRC
}

bmain
