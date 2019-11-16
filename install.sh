#!/usr/bin/sh
BASEDIR="$(pwd)"
#.profile
ln -fs $BASEDIR/.profile ~/.profile
#.zshrc
ln -s $BASEDIR/.zshrc ~/.zshrc
#vim
ln -fs $BASEDIR/vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/spell
ln -fs $BASEDIR/vim/ru.utf-8.sug ~/.vim/spell/ru.utf-8.sug
ln -fs $BASEDIR/vim/ru.utf-8.spl ~/.vim/spell/ru.utf-8.spl
#mpv
mkdir -p ~/.config/mpv
ln -fs $BASEDIR/mpv/mpv.conf ~/.config/mpv/mpv.conf
ln -fs $BASEDIR/mpv/input.conf ~/.config/mpv/input.conf
#zathura
mkdir -p ~/.config/zathura
ln -fs $BASEDIR/zathurarc ~/.config/zathura/zathurarc
ln -fs $BASEDIR/redshift.conf ~/.config/redshift.conf
#goldendict
mkdir -p ~/.goldendict
ln -fs $BASEDIR/goldendict/qt-style.css ~/.goldendict/qt-style.css
ln -fs $BASEDIR/goldendict/article-style.css ~/.goldendict/article-style.css
ln -fs $BASEDIR/goldendict/config ~/.goldendict/config
#rofi
mkdir -p ~/.config/rofi
ln -fs $BASEDIR/rofi/config ~/.config/rofi/config
#youtube-dl
mkdir -p ~/.config/youtube-dl
ln -fs $BASEDIR/youtube-dl/config ~/.config/youtube-dl/config
#compton
ln -fs $BASEDIR/compton.conf ~/.config/compton.conf
#ranger
mkdir -p ~/.config/ranger
ln -fs $BASEDIR/ranger/commands_full.py ~/.config/ranger/commands_full.py
ln -fs $BASEDIR/ranger/commands.py ~/.config/ranger/commands.py
ln -fs $BASEDIR/ranger/rc.conf ~/.config/ranger/rc.conf
ln -fs $BASEDIR/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -fs $BASEDIR/ranger/scope.sh ~/.config/ranger/scope.sh
