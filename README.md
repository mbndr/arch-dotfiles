# Arch-Dotfiles
These are the dotfiles of my Arch Linux system I currently only use to play around.  
I'm no Arch expert and it's possible that there are many mistakes in my dotfiles. Feel free to report these.

The main goal is to create a system which consists of installing a blank Arch Linux, dowloading this configuration, installing required stuff from the [software list](#software-list) and everything should work. There are not really any other local files, for projects version control is used.

![screenshot](https://raw.githubusercontent.com/probandula/arch-dotfiles/master/misc/screenshot.png)

```bash
git clone https://github.com/probandula/arch-dotfiles
cd arch-dotfiles
./dotfiles # Print help
```
It's recommended to check first if all software is installed (`./dotfiles -s`) then to manually **backup your old configuration** and then to install the dotfiles (`./dotfiles -i`). The wallpapers can be downloaded with `./dotfiles -w`.

## Install
If you run `./dotfiles -i` all dotfiles will be copied to the home directory. There are several options:  
* `-o`: Set the output directory to something different than home
* `-f`: Only copy one file / folder
* `-y`: Don't ask on every file if it should be overwritten

## Software list
If you run `./dotfiles -s` there will be a list of software recommended or needed to use this configuration.
There is also printed if this software is currently installed on your system.  
**This list guarantees nothing and it's possible I forget something!**

## Wallpaper download
The wallpapers used in this dotfiles are way to heavy for the git repo with about 20MB per image. I decided to write a script which automatically downloads all wallpapers. You can run it with `./dotfiles -w`. The success or failure will be shown in the terminal.

## Scripts, functions and aliases

### Misc
* `conf <key>`: Opens the specific config file for the given key (must be registered)
* `keyinfo`: Shows the `sxhkd` configuration in a colored and more readable way
* `colortest`: Shows the configured colors
* `ll`: Better file listing (`ls -la --color=auto`)
* `tree`: Better tree view (`tree -a -C -I ".git"`)
* `set_bg <name>`: Sets the wallpaper by name
* `show_bg`: Shows all available wallpapers (in `~/.wallpapers`)
* `update_bg`: Updates the background picture in case of resolution changes
* `update_resolution`: Updates the screen resolution to `auto`
* `update_screen`: Calls `update_resolution` and `update_bg`
* `us`: Short alias for `update_screen` (often needed in VirtualBox)

### BSPWM aliases
* `bgap <int>`: Changes the window gap
* `bbw <int>`: Changes the border width
* `bnc`: Closes the current node

### Keybindings
There are several keybindings for `sxhkd` set. Currently only commented with the `showkeys` command (see above).

## Wallpapers
* [Firewatch wallpapers](http://blog.camposanto.com/post/138965082204/firewatch-launch-wallpaper-when-we-redit-the)
* [Forest](https://images.unsplash.com/photo-1440688807730-73e4e2169fb8)
* [Mountain](https://static.pexels.com/photos/46113/pexels-photo-46113.jpeg)
* [Wood](https://static.pexels.com/photos/132205/pexels-photo-132205.jpeg)
* [Tree](https://static.pexels.com/photos/38136/pexels-photo-38136.jpeg)
