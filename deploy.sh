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
        # Mozilla's app settings since I add them by hand, but I do want to
        # store them in git.
        if [[ $i == "firefox" || $i == "thunderbird" ]]; then
            continue
        else
           stow $i
           # Just making sure everything is ok
           if [[ $? -eq 0 ]]; then
               echo "$i was successfully deployed"
           else
               echo "There is a problem with $i"
           fi
        fi
    fi
done
exit 0
