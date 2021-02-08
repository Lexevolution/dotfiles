#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sudo="doas"

export EDITOR=nano
export VISUAL=nano

rightTriangle=$'\ue0b0'
leftTriangle=$'\ue0b2'
gitBranchIcon=$'\uf418'
reverseColours="\[\e[7m\]"
resetColours="\[\e[0m\]"

gitColour="\[\e[38;2;234;239;91m\]" #RGB: 234,239,91

usernameColourBG="\[\e[48;2;172;65;66m\]" #RGB: 172,65,66
usernameColourFG="\[\e[38;2;172;65;66m\]"

directoryColourBG="\[\e[48;2;43;104;33m\]" #RGB: 43,104,33
directoryColourFG="\[\e[38;2;43;104;33m\]"

gitText() {
  if [ -n "$(gitBranch=git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')" ]
  then
    echo "$(tput cols)$gitColour$leftTriangle$reverseColours$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')$resetColours\\r"
  else
    echo "no"
  fi
}

gitString="$(gitText)"
usernameString="$usernameColourBG\u@\h$resetColours$usernameColourFG$directoryColourBG$rightTriangle$resetColours"
directoryString="$directoryColourBG \w$resetColours$directoryColourFG$rightTriangle$resetColours"
PS1="$gitString$usernameString$directoryString\$ "
