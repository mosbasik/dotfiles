# Arch wiki says not to remove this line that's included by default
# https://wiki.archlinux.org/index.php/Zsh#Startup/Shutdown_files
emulate sh -c 'source /etc/profile'


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
