# manual crop: pdfcrop --margins '-75 -40 -56 -40' --clip odd.pdf odd_cropped.pdf  # Left, Top, Right, bottom
# Auto crop: pdf-crop-margins -s -u -mo $FILENAME
#   - for f in *.pdf ; do pdf-crop-margins -mo -s -u $f; done
# Drop pages
#   - qpdf book.pdf --pages .  2-1313 -- --replace-input

source /home/iq/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins that exist in oh-my-zsh
antigen bundle wd
antigen bundle sudo
antigen bundle git
antigen bundle colored-man-pages
antigen bundle bobsoppe/zsh-ssh-agent

# Load the theme.
antigen theme tweekmonster/nanofish nanofish

# Plugins that exist outside oh-my-zsh so we have to specify the repo
antigen bundle peterhurford/up.zsh
antigen bundle esc/conda-zsh-completion

# Tell antigen that you're done.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

export EDITOR="vim"
export TERM=xterm-256color

alias sl='ls'
alias backup_config='sudo cp -r .gitconfig .dmenurc .xinitrc antigen.zsh .tmux.conf.local .i3/ .gtkrc-2.0 .ideavimrc .zshrc .vimrc .dmrc .config/compton.conf .profile .i3status.conf .config/conky .dir_colors Personal/init_files/'
alias signal='signal-desktop --disable-gpu &>/dev/null'
#alias spotify='spotify --disable-gpu &> /dev/null'
alias slack='slack --disable-gpu &> /dev/null'

alias screenAbove="xrandr --output HDMI1 --mode 1920x1080 --above eDP1"
alias screenReset="xrandr -s 0"
alias build="mkdir build; cd build; cmake ..; make -j 4; cd ../"
alias rebuild="cd build; cmake ..; make -j 6; cd ../"
alias updatePalisade="cd; rm -rf palisade-development;git clone git@gitlab.com:palisade/palisade-development.git;cd palisade-development; git submodule sync --recursive;git submodule update --init  --recursive; mkdir build; cd build; cmake -DBUILD_UNITTESTS=OFF -DBUILD_EXAMPLES=OFF -DBUILD_BENCHMARKS=OFF .. ;make -j 6"

# Zplug configuration stuff below
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY

export PATH=$PATH:/home/iq/custom_scripts

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/iq/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/iq/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/iq/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/iq/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


###########################################
# Aliases for rofi
##########################################
autoload -U +X bashcompinit && bashcompinit
eval "$(register-python-argcomplete pipx)"


source ~/.profile
