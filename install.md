# Git access

[Generate SSH keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#)

[Add new SSH keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#)

```
git config --global user.email "ian@ianq.ai"
git config --global user.name "IQ"
```

`cd ~/; mkdir Personal; cd Personal; git clone git@gitlab.com:ianq/init_files.git`

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
sudo pacman -Su libxi  libxrender alsa-utils alsa-card-profiles alsa-firmware libxrandr terminator pulseaudio-alsa texlive-fontsextra libxcursor pavucontrol gparted beep texlive-formatsextra texlive-bibtexextra rofi zip sof-firmware py3status texlive-latexextra libxcomposite libxau libxtst alsa-lib libxss alsa-ucm-conf pulseaudio tmux libpqxx redshift mesa-libgl libxdamage texlive-bin libglvnd texlive-core texmaker jre8-openjdk alsa-tools alsa-plugins unzip firefox python-pip chromium tlp obsidian signal-desktop
```

## Pamac

```
pamac build google-chrome dropbox cryptomator clion clion-jre slack-desktop pycharm-professional authy spotify zoom tlpui nvm
```

which will probably error out about `JAVA_HOME`. In that case, add 

`export JAVA_HOME='/usr/lib/jvm/java-X-openjdk/'`or `sudo archlinux-java set java-X-openjdk`

to the `.profile` (omitted from our default as it's not always applicable)

then visit [rustup](https://rustup.rs/) to install rust

```
pamac build mullvad-vpn 
```

Do `gpg --receive-keys X` if you get an error about PGP signatures

# Copy configs

```
cd ~/Personal/init_files
```

First, move to the directory with all the configs

`cp -r .dir_colors .dmenurc  .dmrc  .i3 .i3status.conf .ideavimrc .vimrc .xinitrc .zshrc antigen.zsh compton.conf .profile .tmux.conf.local ~/`

Note: you'll probably need to change the antigen path in .zshrc

## Pip install 

`pip3 install argcomplete`

## Zsh

1) Run `which zsh`

2) put the result into the below as relevant

`chsh -s $<which zsh> $<username>` (note, you don't need to include the `$`)

## Install intellimacs

`cd && git clone git@github.com:MarcoIeni/intellimacs.git`


# Apps and setup

## From pamac

- authy

- clion

- cryptomator

- dropbox

- mullvad

- obsidian (below)

- pycharm

- signal-desktop

- slack

- spotify

- zoom

- zotero


## Battery Optimization

From [tlp arch notes](https://wiki.archlinux.org/title/TLP)

```
sudo systemctl enable tlp.service
sudo systemctl start tlp.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket
```


## Tmux 

`cd; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf`

`cp ~/Personal/init_files/.tmux.conf.local ~/`

## Rofi

`rofi-theme-selector`

then choose monokai

## Redshift

```
mkdir ~/.config/redshift && cp redshift.conf ~/.config/redshift
```

## Sound


### volume control

`pamac build pa-applet`

### Sound issues

[You've already installed the packages but follow this](https://bbs.archlinux.org/viewtopic.php?id=266775)

### Beep sound

`sudo vim /etc/modprobe.d/nobeep.conf`

```
blacklist pcspkr
```

## ToS

1) Go to [ToS Arch linux page](https://wiki.archlinux.org/title/User:Nasdack/Thinkorswim)

2) Run the installer script (JDK should be installed earlier already)

3) Follow remaining instructions


## Background

Use nitrogen. 

`sudo cp Personal/init_files/desktop_img.jpg /usr/share/backgrounds/`

Move the picture into `/usr/share/backgrounds` and then run nitrogen to change it. P.s nitrogen is already set to automatically run in `.i3/config`

## SSH

Refer to [SSH Docs](https://github.com/IanQS/ssh_setup)

[Arch Linux SSH](https://linuxhint.com/arch_linux_ssh_server/)
[Setting up SSH](https://zduey.github.io/tutorials/ssh-server-on-home-computer/)

[Setting up
Pycharm](https://blog.jetbrains.com/blog/2021/11/29/introducing-remote-development-for-jetbrains-ides/#remark42)

## Postgresql

[Arch Linux Setup](https://linuxhint.com/install-postgresql-10-arch-linux/)

# Note Taking Software

- If you just want to use obsidian (TBH easier), just copy the `obsidian_config` file into the
  vault's `.obsidian` folder

## Terminal

1) Create a new folder (`cd; mkdir `)  Adding a folder name after mkdir, obviously. 

**Note: mkdir Bla\ bla** if you want to create a folder called `Bla bla` with spaces

## Logseq

1) Create a new graph based on the dir ^ (there should now be 3 folders: journals, logseq, pages)

2) drag and drop a PDF into any page of the logseq folder. This creates an `assets` folder 

## Obsidian

1) Specify the folder above

2) Go to `settings` the `Files & Links` 

  - Change `Default location for new notes` to be `In folder specified below` and for that folder specify the `pages` folder
  
  - Change `New Link Format`  to be `Relative path to file` 
  
  - Turn off `Uses Wikilinks`
  
  - Change `Default location for attachments` to be `In folder specified below` and for that folder specify the `assets` folder

3) Go to `settings` then `Core Plugins` 
   
   - and enable `Daily Notes` then go to the `Options` for it and make the date syntax as `MMM Do, YYYY`. Then, `New file location` to `journals`

4) Go to `Settings` then `Community Plugins` 

  - Turn off `safe mode` 
  
  - Install `zoom`, `outliner` 

5) Syncing:
   - Logseq: `MMM do, yyyy` 
   - Obsidian: `MMM Do, YYYY` with `Default File Location` as `Journals`
