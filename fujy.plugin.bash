. "${BASH_SOURCE%/*}/fujy"

_fujy_units()
{
    juju status 2>/dev/null | awk '/^[a-z][a-z0-9-]*\/[0-9]/{gsub(/\*/, "", $1); print $1}'
}

_fujy_completion()
{
    local cur units

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    [[ $COMP_CWORD -gt 1 ]] && return

    units="$(_fujy_units | tr '\n' ' ')"
    COMPREPLY=($(compgen -W "$units" -- "$cur"))
}

complete -F _fujy_completion flyjssh fjssh flyjsshb flyjsshz flyjsshk
