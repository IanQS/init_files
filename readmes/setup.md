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

## Postgresql

Refer to [postgresql setup](pg.md)
