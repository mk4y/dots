#!/bin/sh
# determine path to dots dir
DOTSPATH="$(cd $(dirname $(dirname $(readlink -f ${(%):-%N}))); pwd)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/mk4y/.zshrc'

autoload -Uz compinit promptinit colors select-word-style
select-word-style bash
compinit -i
promptinit
colors

# history
setopt hist_ignore_space
setopt append_history
setopt hist_ignore_dups
setopt share_history
setopt extendedglob

# PATH
PATH=${PATH}:${HOME}/.scripts/sh/
export PATH

# keybinds
bindkey		"^[[3~"		delete-char
bindkey		"^[[1~"		beginning-of-line
bindkey         "^[[4~"		end-of-line
bindkey         "^[[5~"		beginning-of-buffer-or-history
bindkey         "^[[6~"         end-of-buffer-or-history

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source input
if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ]
then
        export INPUTRC="/etc/inputrc"
fi 

# source sensitive data from .localrc
if [[ -a ~/.localrc ]]
  then
    source ~/.localrc
fi

# prompt style
autoload -U colors && colors
#PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[magenta]%}%${PWD/#$HOME/~}%{$reset_color%} » "
PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~%{$reset_color%} » "

sources=(
  'functions'
  'alias'
)

for src in $sources; do
  source $DOTSPATH/zsh/$src.zsh
done
