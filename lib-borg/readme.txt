The  borg_* library of bash functions

This is a library of function that all begin with the string
[borg_]. No function outside this library should be so
named. All functions of this library shall be available to
scripts that are installing the full system. They are not
meant to be used by scripts used after the full system is
installed.

All of these functions shall be defined in misc files that
are named

    NNN.some-description

where 'NNN' is a string of three digits, and 'some description'
indicates what functions(s) are defined within. In general the
description will be then name of the function itself, or some
prefix of several functions contained therein. The files will
be sourced in ascending numerical order. Functions defined in
file '500.foo' will be able to call functions defined in file
'400.foo' but not functions defined in '600.foo'
