# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ll='ls -la --color=auto'
alias tree='tree -a -C -I ".git"'
# Update the current wallpaper
alias update_bg='[ -n "$WALLPAPER" ] && set_bg $WALLPAPER || set_bg 1'
# Update the screen resolution TODO to function to be able to set different output (auto?)
alias update_resolution='xrandr --output VGA-1 --auto'
# Update screen (resolution and background)
alias update_screen='update_resolution && update_bg'
alias us='update_screen'
# TODO just a workaround for non bold
alias xterm='xterm -fn 5x10'

# BSPWM aliases
alias bgap='bspc config window_gap '
alias bbw='bspc config border_width '
alias bnc='bspc node -c'

# Set the background image
# $1 is a number / name of the file, extension is automatically checked
set_bg() {
    name=$1
    path=""
    # Use default image if no argument given
    [ -z $1 ] && name="1"
    base=~/.wallpapers
    # Check for the file extensions
    if [ -e $base/$name.jpg ]; then
        path=$name.jpg
    elif [ -e $base/$name.jpeg ]; then
        path=$name.jpeg
    elif [ -e $base/$name.png ]; then
        path=$name.png
    fi
    # Set the wallpaper
    feh --bg-fill $base/$path
    # Write to the env variable
    export WALLPAPER=$name
}

# Prompt
export PROMPT_COMMAND=_prompt
_prompt() {
    local ec=$?
    local code=""
    if [ $ec -ne 0 ]; then
        code="\[\e[0;31m\][${ec}]\[\e[0m\] "
    fi
    PS1="${code}\[\e[0;32m\]\W\[\e[0m\] $ "
}

# Inputrc location
export INPUTRC=~/.inputrc
# Extend path
export PATH=$PATH:~/.scripts
# Favorite editor
export EDITOR=nano
# Default wallpaper
export WALLPAPER=1

# Helper functions to print colored
cprint() {
    echo -e "\x1b[0;${1}m${@:2}\x1b[0m"
}

printblk() { cprint "30" $@; }
printred() { cprint "31" $@; }
printgrn() { cprint "32" $@; }
printylw() { cprint "33" $@; }
printblu() { cprint "34" $@; }
printmag() { cprint "35" $@; }
printcyn() { cprint "36" $@; }
printwht() { cprint "37" $@; }
