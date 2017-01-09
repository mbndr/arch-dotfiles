# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ll='ls -la --color=auto'
alias tree='tree -a -C -I ".git"'

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

# Helper functions to print colored
cprint() {
    echo -e "\x1b[0;${1}m${2}\x1b[0m"
}

printblk() { cprint "30" $1; }
printred() { cprint "31" $1; }
printgrn() { cprint "32" $1; }
printylw() { cprint "33" $1; }
printblu() { cprint "34" $1; }
printmag() { cprint "35" $1; }
printcyn() { cprint "36" $1; }
printwht() { cprint "37" $1; }
