# Arch Linux
Configuration files for Arch Linux distro.

Specific configurations are available inside hardware folders.

## Configuration
Packages ans configurations for Arch Linux.

### System update
Keep the system updated using pacman.

```
# pacman -Syu
```

# Basic tools and packages
The following tools are required to perform the configuration tasks.

- wget: allows connections with resources on the web for content download.
- git: git repository manager.
- vim: text editor. Optionally *nano* is already installed.

```
# packman -S wget git vim
```

### Network Manager

- NetworkManager

The NetworkManager package is going to be the default network manager for wired and wireless connections. Must install **nm_applet** as well, so a system tray icon for network is available. 

```
# pacman -S networkmanager network-manager-applet
```

To start the applet automatically, add the following line in the end of the *.xinitrc* file.

```
$ ~/.xinitrc
------------
nm-applet --sm-disable &
```

### Bluetooth
Configuring bluetooth devices.

### Xorg
Configuring Xorg.

### Graphics Drivers
Configuring graphics drivers.

### Power Management
Configuring power management.

### Window Manager

- Awesome WM: window manager for graphical interface.
- ttf-dejavu: default font.

The Awesome WM requires at least a font and a terminal emulator to replace **xterm**.

```
# pacman -s awesome ttf-dejavu
```

To start Awesome WM when X is started, add the following line at the very end of the *.xinitrc* file.

```
$ ~/.xinitrc
------------
exec awesome
```

#### Terminal

- urxvt

Install the urxvt terminal with support to **pixbuf**. This will allow *ranger* file manager to create previews of image files.

```
$ git clone https://aur.archlinux.org/rxvt-unicode-pixbuf.git
$ cd rxvt-unicode-pixbuf
$ makepkg -s
# pacman -U rxvt-unicode-pixbuf-*
```

The urxvt terminal emulator relies on *~/.Xresources* file to be configured. A template of [.Xresources](.Xresources) is available to download.

Ater creating the file, make sure that *xorg-xrdb* is installed and add the following line is added to *.xinitrc* file.

```
$ ~/.xinitrc
------------
xrdb -merge ~/.Xresources &
```

A template of [.xinitrc](.xinitrc) file is available to download.

#### File Manager

- ranger

Ranger is a console file manager and must be installed with pacman.

```
# pacman -S ranger
```

Create a *rc.conf* file in ~/.config/ranger/ or download the [rc.conf](.config/ranger/rc.conf) template to allow ranger customization and image previewing.

### Utilities
Common utilities to be installed.

- scrot: tool for screenshots.

```
# pacman -S scrot
```

