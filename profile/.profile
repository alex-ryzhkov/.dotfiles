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
export MYTERM=termite
# Make systemctl output colorful
export SYSTEMD_COLORS=true
# Set $PATH {{{
# http://askubuntu.com/questions/49784/how-is-bin-added-to-my-path
# Locally installed package
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Go Packages
export GOPATH=$HOME/work/go
if [ -d "$GOPATH" ] ; then
    export GOBIN=$GOPATH/bin
    export PATH="$GOBIN:$PATH"
fi

# User Scripts
# if [ -d "$HOME/.scripts" ] ; then
#     export PATH="$HOME/.scripts:$PATH"
# fi
#}}}

# Swap escape and capslock
setxkbmap -option caps:swapescape
# Start X automatically
# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#     startx
# fi
# vim:foldmethod=marker:foldlevel=0
