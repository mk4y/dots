# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source sensitive data from .localrc
if [[ -a ~/.localrc ]]
  then
    source ~/.localrc
fi

# prompt style
PS1='[\u@\h \W]\$ '
