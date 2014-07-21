# $DOT = ~/.dotfiles
export DOT=$HOME/.dotfiles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source sensitive data from .localrc
if [[ -a ~/.localrc ]]
  then
    source ~/.localrc
fi

# source aliases
for f in $(find $DOT -name "env.sh" -or -name ".aliases.sh" -or -name "source.sh" -type f)
  do
    source "$f"
done

# prompt style
PS1='[\u@\h \W]\$ '
