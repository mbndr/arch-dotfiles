# Arch-Dotfiles
These are the dotfiles of my Arch Linux system I currently only use to play around.  
I'm no Arch expert and it's possible that there are many mistakes in my dotfiles. Feel free to report these.

![screenshot](https://raw.githubusercontent.com/probandula/arch-dotfiles/master/misc/screenshot.png)

```bash
git clone https://github.com/probandula/arch-dotfiles
cd arch-dotfiles
./dotfiles # Print help
```
It's recommended to check first, if all software is installed (`./dotfiles -s`), then to manually backup your old configuration and then to install the dotfiles (`./dotfiles -i`).

## Install
If you run `./dotfiles -i` all dotfiles will be copied to the home directory. There are several options:  
* **-o**: Set the output directory to something different than home
* **-f**: Only copy one file / folder
* **-y**: Don't ask on every file if it should be overwritten

## Software list
If you run `./dotfiles -s` there will be a list of software recommended or needed to use this configuration.
There is also printed if this software is currently installed on your system.  
**This list guarantees nothing and it's possible I forget something!**

## Scripts, functions and aliases

### Misc
* **conf &lt;key&gt;**: Opens the specific config file for the given key (must be registered)
* **showkeys**: Shows the `sxhkd` configuration in a colored and more readable way
* **showcolors**: Shows the configured colors
* **ll**: Better file listing (`ls -la --color=auto`)
* **tree**: Better tree view (`tree -a -C -I ".git"`)
* **set_bg &lt;name&gt;**: Sets the wallpaper by name
* **show_bg**: Shows all available wallpapers (in `~/.wallpapers`)
* **update_bg**: Updates the background picture in case of resolution changes
* **update_resolution**: Updates the screen resolution to `auto`
* **update_screen**: Calls `update_resolution` and `update_bg`
* **us**: Short alias for `update_screen` (often needed in VirtualBox)

### BSPWM aliases
* **bgap &lt;int&gt;**: Changes the window gap
* **bbw &lt;int&gt;**: Changes the border width
* **bnc**: Closes the current node

## Wallpapers
[Firewatch](http://blog.camposanto.com/post/138965082204/firewatch-launch-wallpaper-when-we-redit-the)
