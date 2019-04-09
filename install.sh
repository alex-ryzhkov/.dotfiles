#!/usr/bin/sh
BASEDIR="$(pwd)"
#.profile
ln -s $BASEDIR/.profile ~/.profile
#.zshrc
ln -s $BASEDIR/.zshrc ~/.zshrc
#.vimrc
ln -s $BASEDIR/vim/.vimrc ~/.vimrc
#mpv
mkdir ~/.config/mpv
ln -s $BASEDIR/mpv/mpv.conf ~/.config/mpv/mpv.conf
ln -s $BASEDIR/mpv/input.conf ~/.config/mpv/input.conf
#zathura
mkdir ~/.config/zathura
ln -s $BASEDIR/zathurarc ~/.config/zathura/zathurarc
ln -s $BASEDIR/redshift.conf ~/.config/redshift.conf
#goldendict
mkdir ~/.goldendict
ln -s $BASEDIR/goldendict/qt-style.css ~/.goldendict/qt-style.css
ln -s $BASEDIR/goldendict/article-style.css ~/.goldendict/article-style.css
ln -s $BASEDIR/goldendict/config ~/.goldendict/config
#rofi
mkdir ~/.config/rofi
ln -s $BASEDIR/rofi/config ~/.config/rofi/config
#ranger
mkdir ~/.config/ranger
ln -s $BASEDIR/ranger/commands_full.py ~/.config/ranger/commands_full.py
ln -s $BASEDIR/ranger/commands.py ~/.config/ranger/commands.py
ln -s $BASEDIR/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s $BASEDIR/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -s $BASEDIR/ranger/scope.sh ~/.config/ranger/scope.sh
