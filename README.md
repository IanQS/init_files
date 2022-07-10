# Git access

[Generate SSH keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#)

[Add new SSH keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#)

```
git config --global user.email "ian@ianq.ai"
git config --global user.name "IQ"
```

```
cd ~/; mkdir Personal; cd Personal; git clone git@gitlab.com:ianq/init_files.git
```

# Stopping lightdm

was giving infinite loop login issue. Easiest way is to just run 

```
sudo systemctl disable lightdm.service
```

# Package Signing

```
sudo pacman-key --init; sudo pacman-key --populate archlinux
```

## Key

Create a file called `.Xmodmap`

```
! swap Caps_Lock and Control_R
!
remove Lock = Caps_Lock
remove Control = Control_R
keysym Control_R = Caps_Lock
keysym Caps_Lock = Control_R
add Lock = Caps_Lock
add Control = Control_R
```

```
/usr/bin/xmodmap /home/iq/.Xmodmap
exec i3
```


# CMD Line  

## Applications

```
sudo pacman -Su libxi  libxrender alsa-utils alsa-card-profiles alsa-firmware libxrandr terminator pulseaudio-alsa texlive-fontsextra libxcursor pavucontrol gparted beep texlive-formatsextra texlive-bibtexextra rofi zip sof-firmware py3status texlive-latexextra libxcomposite libxau libxtst alsa-lib libxss alsa-ucm-conf pulseaudio tmux libpqxx redshift mesa-libgl libxdamage texlive-bin libglvnd texlive-core texmaker jre8-openjdk alsa-tools alsa-plugins unzip firefox python-pip chromium tlp obsidian signal-desktop openssh gnu-netcat postgresql timescaledb
```

## Pamac

```
pamac build google-chrome dropbox cryptomator slack-desktop tlpui nvm snapd
```

which will probably error out about `JAVA_HOME`. In that case, add 

`export JAVA_HOME='/usr/lib/jvm/java-X-openjdk/'`or `sudo archlinux-java set java-X-openjdk`

to the `.profile` (omitted from our default as it's not always applicable)

then visit [rustup](https://rustup.rs/) to install rust

```
pamac build mullvad-vpn 
```

Do `gpg --receive-keys X` if you get an error about PGP signatures

## Snapd

```
sudo snap install code --classic; sudo snap install clion --classic; sudo snap install pycharm-professional --classic; sudo snap install authy; sudo snap install spotify; sudo snap install zotero-snap; sudo snap install zoom-client
```

**NOTE**: run `sudo ln -s /var/lib/snapd/snap /snap` if you receive 

```
Cannot install snap file: snap
is unusable due to missing files` or `cannot install "X": classic confinement requires snaps
under /snap or symlink from /snap to /var/lib/snapd/snap
```



# Copy configs

```
cd ~/Personal/init_files
```

First, move to the directory with all the configs

```
cp -r .dir_colors .dmenurc  .dmrc  .i3 .i3status.conf .ideavimrc .vimrc .xinitrc .zshrc antigen.zsh compton.conf .profile .tmux.conf.local ~/
```

Note: you'll probably need to change the antigen path in .zshrc

## Pip install 

`pip3 install argcomplete`

## Zsh

1) Run `which zsh`

2) put the result into the below as relevant

`chsh -s $<which zsh> $<username>` (note, you don't need to include the `$`)

## Install intellimacs

`cd && git clone git@github.com:MarcoIeni/intellimacs.git`

# Setup

Refer to [setup.md](readmes/setup.md)
