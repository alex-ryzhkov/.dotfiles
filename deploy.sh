#!/usr/bin/sh
which stow > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo 'stow is not found, aborting deployment'
    exit 1
fi
for i in *; do
    # This check makes sure we stowing only directories since only they contain
    # actual dotfiles and we won't create symlinks to README.md etc
    if [[ -d $i ]]; then
        # The following check is necessary because I don't want to stow
        # Mozilla's apps settings since I add them by hand, but I do want to
        # store them in git.
        if [[ $i == "firefox" || $i == "thunderbird" ]]; then
            continue
        else
           stow --target=$HOME $i
           end_status=$?
           # Format output in a nice, legible way
           # Src: https://stackoverflow.com/questions/4409399/padding-characters-in-printf
           pad=$(printf '%0.1s' " "{1..20})
           padlength=20
           printf 'Deploying %s' "$i"
           printf '%*.*s' 0 $((padlength - ${#i})) "$pad"
           if [[ $end_status -eq 0 ]]; then
               printf 'OK\n'
           else
               printf 'FAIL\n'
           fi
        fi
    fi
done
exit 0
