# Arch wiki says not to remove this line that's included by default
# https://wiki.archlinux.org/index.php/Zsh#Startup/Shutdown_files
emulate sh -c 'source /etc/profile'


# From https://wiki.archlinux.org/index.php/Xinit#Autostart_X_at_login
# If (no display is set) and (we're in TTY #1)
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then

    # The `exec` causes you to log out when the X session ends
    exec startx

fi
