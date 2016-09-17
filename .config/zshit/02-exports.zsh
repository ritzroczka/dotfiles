###< vim: set ft=zsh:fdm=marker:fmr=#<,#>:fdl=0:fen:et:sw=2:fcl=all:

# XDG
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_VIDEOS_DIR=${HOME}/Videos
export XDG_MUSIC_DIR=${HOME}/Music
export XDG_PICTURES_DIR=${HOME}/Pictures
export XDG_DOCUMENTS_DIR=${HOME}/Documents
export XDG_DOWNLOAD_DIR=${HOME}Downloads

# LOCALE
export              LANG=en_US
export        LC_ADDRESS=en_US.UTF-8
export        LC_COLLATE=en_US.UTF-8
export          LC_CTYPE=en_US.UTF-8
export LC_IDENTIFICATION=en_US.UTF-8
export    LC_MEASUREMENT=en_US.UTF-8
export       LC_MESSAGES=en_US.UTF-8
export       LC_MONETARY=en_US.UTF-8
export           LC_NAME=en_US.UTF-8
export        LC_NUMERIC=en_US.UTF-8
export          LC_PAPER=en_US.UTF-8
export      LC_TELEPHONE=en_US.UTF-8
export           LC_TIME=en_US.UTF-8

# PATH
unset PATH
export PATH=${HOME}/bin:/bin:/usr/local/bin:/usr/bin/core_perl:/usr/bin/core_perl/bin/:/usr/bin:${HOME}/bin/site_perl:/usr/bin/vendor_perl:/sbin:/usr/sbin:/usr/games:/usr/local/games
export PERLBREW_ROOT=${HOME}/usr/share/perl5
export TERMINFO=${HOME}/usr/share/terminfo:/usr/share/terminfo

# FONTS
export  FONT='-kori-metis-normal-r-normal-*-11-90-75-75-p-58-iso10646-1'
export  FONT_B='-kori-metis-normal-r-normal-*-11-90-75-75-p-58-iso10646-1'

# MPD
export MPD_HOST=localhost
export MPD_PORT=6600
export MPD_USER=ritzr0czka

## EDITOR
export LESS=''
export PAGET=vimpager
