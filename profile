#!/bin/zsh

##Git branch inline
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

if [ [kubectl] ]; then source <(kubectl completion zsh); fi
source <(kubectl completion bash)

alias "ll=ls -l"
