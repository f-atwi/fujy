. "${BASH_SOURCE%/*}/fujy"

_fujy_units() { juju status 2>/dev/null | awk '/^[a-z][a-z0-9-]*\/[0-9]/{gsub(/\*/, "", $1); print $1}'; }

_fujy_completion() { _fly_complete _fujy_units; }

complete -F _fujy_completion flyjujushell fjujushell flyjujubash fjujubash flyjujuzsh fjujuzsh flyjujuksh fjujuksh
