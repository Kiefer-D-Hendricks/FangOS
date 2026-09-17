# Bash completion for fang, the FangOS package tool.
#
# Installed to /usr/share/bash-completion/completions/fang by the fang
# package. To try it without installing:
#   source fang-completion.bash

_fang_complete() {
    local cur cmd w
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Complete the --aur flag for the subcommands that take it.
    if [[ "$cur" == -* ]]; then
        case "${COMP_WORDS[1]}" in
            install|search|info)
                COMPREPLY=( $(compgen -W "--aur" -- "$cur") )
                ;;
        esac
        return 0
    fi

    # First word: the subcommand itself.
    if [[ $COMP_CWORD -eq 1 ]]; then
        COMPREPLY=( $(compgen -W "install remove update search info list clean orphans why" -- "$cur") )
        return 0
    fi

    # With --aur, package names come from the AUR - querying it on every
    # tab press is slow, so stay out of the way.
    for w in "${COMP_WORDS[@]}"; do
        [[ "$w" == "--aur" ]] && return 0
    done

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
