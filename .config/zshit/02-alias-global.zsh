###< vim: set ft=zsh:fdm=marker:fmr=#<,#>:fdl=0:fen:et:sw=2:fcl=all:

alias ll="ls++ | ls_color_internal"
alias l="ls -lah"
alias ls="ls++"
alias ls1='=ls -1'
alias lsa='=ls --color=auto --time-style=full-iso'
alias lsd='/bin/ls -FAv | grep /$ | column'
alias lsl='=ls --color=auto   --group-directories-first -Ah'
alias lsq='=ls --color=always --time-style=full-iso -AlQ'
alias lss='=ls --color=auto -1 | grep "(^\w*[^_-])"'
