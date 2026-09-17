# Bash completion for fang, the FangOS package tool.
#
# Installed to /usr/share/bash-completion/completions/fang by the fang
# package. To try it without installing:
#   source fang-completion.bash

_fang_complete() {
    local cur cmd
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Don't complete package names for flags; fang takes none worth
    # completing here, so just stay out of the way.
    if [[ "$cur" == -* ]]; then
        return 0
    fi

    # First word: the subcommand itself.
    if [[ $COMP_CWORD -eq 1 ]]; then
        COMPREPLY=( $(compgen -W "install remove update search info list clean orphans why" -- "$cur") )
        return 0
    fi

    # Later words: package names, depending on the subcommand.
    cmd="${COMP_WORDS[1]}"
    case "$cmd" in
        install|search)
            # Packages available in the sync repos.
            COMPREPLY=( $(compgen -W "$(pacman -Ssq "$cur" 2>/dev/null)" -- "$cur") )
            ;;
        remove|info|why|list)
            # Installed packages.
            COMPREPLY=( $(compgen -W "$(pacman -Qq 2>/dev/null)" -- "$cur") )
            ;;
    esac
    return 0
}

complete -F _fang_complete fang
