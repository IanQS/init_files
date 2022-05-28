export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox
export PATH=$PATH:$HOME/clion/bin/:$HOME/pycharm/bin/
source "/home/iq/emsdk/emsdk_env.sh" > /dev/null 2>&1
. "$HOME/.cargo/env"
source /usr/share/nvm/init-nvm.sh >> ~/.zshrc
