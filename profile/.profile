# export editor=/usr/bin/vim
# export visual=/usr/bin/vim
# export qt_qpa_platformtheme="qt5ct"
# export gtk2_rc_files="$home/.gtkrc-2.0"
# export PATH=$PATH:$GOPATH/bin:$HOME/work/python/scripts
# export qt_auto_screen_scale_factor=0
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export EDITOR=vim
export VISUAL=$EDITOR
export MYTERM=alacritty
export DOTFILES=~/.dotfiles
# Make systemctl output colorful
export SYSTEMD_COLORS=true
export MOZ_X11_EGL=1
export TERM=screen-256color
if [ -x "$(command -v keychain)" ]; then
    eval `keychain --eval --quiet id_rsa`
fi
# Set $PATH {{{
# http://askubuntu.com/questions/49784/how-is-bin-added-to-my-path
# Locally installed package
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.gem/ruby" ] ; then
    PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
fi

# Go Packages
export GOPATH=$HOME/work/go
if [ -d "$GOPATH" ] ; then
    export GOBIN=$GOPATH/bin
    export PATH="$GOBIN:$PATH"
fi

# User Scripts
if [ -d "$HOME/.scripts" ] ; then
    export PATH="$HOME/.scripts:$PATH"
fi

#/usr/bin/autossh -f -M 0 myaws -f -n -T -N -R 2222:localhost:22

# Swap escape and capslock
# setxkbmap -option caps:swapescape
# Start X automatically
# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#     startx
# fi
#https://unix.stackexchange.com/questions/46960/how-to-configure-gpg-to-enter-passphrase-only-once-per-session
# Invoke GnuPG-Agent the first time we login.
# Does `~/.gpg-agent-info' exist and points to gpg-agent process accepting signals?
# if test -f $HOME/.gpg-agent-info && \
#     kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
#     GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
# else
#     # No, gpg-agent not available; start gpg-agent
#     eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
# fi
# export GPG_TTY=`tty`
# export GPG_AGENT_INFO
# vim:foldmethod=marker:foldlevel=0

