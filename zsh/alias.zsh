#!/bin/bash

# chromium
alias chromium="chromium --incognito"

# pacman
alias pac="sudo pacman -S"
alias pacu="sudo pacman -Syu"
alias pacr="sudo pacman -Rns"
alias pacs="pacman -Ss"
alias paci="pacman -Si"
alias paclo="pacman -Qdt"
alias pacc="sudo pacman -Scc"
alias paclf="pacman -Ql"
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"

# system
alias cp='cp -i'
alias df='df -h'
alias du='du -c -h'
alias grep='grep --color=auto'
alias ls='ls -hF --color=auto'
alias mkdir='mkdir -p -v'
alias more='less'
alias mv='mv -i'
alias nano='nano -w'
alias ping='mtr -bwc 5'
alias rm='timeout 3 rm -Iv --one-file-system'
alias screenshot="scrot '%Y-%m-%d-%H%M%S.png' -c -d 5 -q 100 -e 'mkdir -p $HOME/images/screenshots && mv \$f $HOME/images/screenshots'"

alias poweroff='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'
