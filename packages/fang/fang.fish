# fish completion for fang, the FangOS package tool.
#
# Installed to /usr/share/fish/vendor_completions.d/fang.fish by the fang
# package (or ~/.config/fish/completions/fang.fish for a single user).

# Subcommands, completed at position 1 only.
complete -c fang -f -n '__fish_use_subcommand' -a install -d 'Install packages'
complete -c fang -f -n '__fish_use_subcommand' -a remove -d 'Remove packages'
complete -c fang -f -n '__fish_use_subcommand' -a update -d 'Update the whole system'
complete -c fang -f -n '__fish_use_subcommand' -a search -d 'Search for packages'
complete -c fang -f -n '__fish_use_subcommand' -a info -d 'Show package details'
complete -c fang -f -n '__fish_use_subcommand' -a list -d 'List installed packages'
complete -c fang -f -n '__fish_use_subcommand' -a clean -d 'Clear the pacman package cache'
complete -c fang -f -n '__fish_use_subcommand' -a orphans -d 'List orphaned packages'
complete -c fang -f -n '__fish_use_subcommand' -a why -d 'Show why a package is installed'

# Top-level flags.
complete -c fang -f -n '__fish_use_subcommand' -s h -l help -d 'Show help and exit'
complete -c fang -f -n '__fish_use_subcommand' -l version -d 'Show version and exit'

# The --aur flag for install/search/info.
complete -c fang -f -n '__fish_seen_subcommand_from install search info' -l aur -d 'Use the AUR via yay/paru instead of the repos'

# Package names available in the sync repos (install, search), filtered by
# the current token like the bash completion does. With --aur the names
# come from the AUR - too slow to query on every tab press, so stay out
# of the way (mirrors the bash completion).
complete -c fang -f -n '__fish_seen_subcommand_from install search; and not __fish_contains_opt aur' -a '(pacman -Ssq (commandline -ct) 2>/dev/null)'

# Installed package names (remove, info, why, list).
complete -c fang -f -n '__fish_seen_subcommand_from remove info why list' -a '(pacman -Qq 2>/dev/null)'
