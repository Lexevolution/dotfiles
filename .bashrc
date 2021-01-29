#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sudo="doas"
PS1='\n\@ | \D{%a %e %b %Y} | \w\n\u@\h \$ '
export EDITOR=nano
export VISUAL=nano
