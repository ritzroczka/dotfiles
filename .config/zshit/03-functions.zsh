###< vim: set ft=zsh:fdm=marker:fmr=#<,#>:fdl=0:fen:et:sw=2:fcl=all:
###
#      ${HOME}/etc/zsh/03-functions.zsh
#   ‗‗‗‗‗‗‗‗‗‗‗‗ ‗‗‗‗‗‗ ‗‗‗‗‗‗‗‗ ‗‗‗‗‗‗‗‗‗‗‗
#         owner  Magnus Woldrich <magnus.woldrich@gmail.com>
#         btime  2009-04-24
#         mtime  2016-09-05 16:31:24
#   permissions  You are free to use things you may find useful here.
#                Would my tweaks happen to give you a raise or fetch you a
#                girlfriend, it goes without saying I'm counting on you
#                to share with me as I've shared with you.
#           git  http://github.com/trapd00r/configs/zsh  (up-to-date)
#           url  http://devel.japh.se/configs/zsh        (sync 1/24h)
#           irc  japh@freenode #zsh #vim #perl
#   ‗‗‗‗‗‗‗‗‗‗‗‗ ‗‗‗‗‗‗‗‗‗‗‗‗‗ ‗‗‗‗ ‗‗‗‗ ‗‗‗‗
###
###>

#< basics
cd()        { builtin cd "$@" && ls }
l()         { vdir  -h --format=across --color -w 100 --sort=time "$@" }
df()        { /bin/df -h --total "$@" }
mutt()      { TERM=xterm-256color muttneo -F $XDG_CONFIG_HOME/muttneorc "$@" }
tig()       { TERM=xterm-256color /usr/bin/tig "$@"}
goto()      { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
du1()       { du -h --max-depth=1 "$@" | sort -k 1,1hr -k 2,2f; }
scx()       { TERM=xterm-256color screen -x }
zman()      { PAGER="less -g -s '+/^       "$1"'" man zshall }
#>
#< shell
which() {
  IFS="$(printf '\n\t')"
  printf '\e[?7t'
  builtin which "$@" \
    && builtin type "$@" \
    && whereis "$@" \
    && file $(builtin type "$@" | awk '{print $3}') 2> /dev/null
  printf '\e[?7t'
}
commands() {
  echo -n $PATH | xargs -d : -I {} find {} -maxdepth 1 \
       -executable -type f -printf '%P\n' | sort -u
}
#>

f() {
  =feh -D2.1 -rZxd -B black -g 1080x1920 -r \
       --action "cp -v '%f' /home/scp1/img/_; cp -v '%f'" \
       --action2 "rm -v '%f'"  "$@"
}
vimhelp() {
  /usr/local/bin/vim -X -c \
    " for k in range(0, 127) | \
        if (k != 104 && k < 106 && k != 58) || k > 109 | \
          silent! exe 'nnoremap ' . nr2char(k) . ' :qa!<CR>' | \
        endif | \
      endfor  | :h $@ | :only \
    "
}
