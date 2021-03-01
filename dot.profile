echo .profile : redefine exit\(\)
exit () { echo try 'builtin exit'; }
echo .profile : calling bash
bash
