
## Screenlocking

Note: can't get a perfect setup on X11: https://blog.martin-graesslin.com/blog/2015/01/why-screen-lockers-on-x11-cannot-be-secure/

However, I'm using the approach described here: https://leahneukirchen.org/blog/archive/2020/01/x11-screen-locking-a-secure-and-modular-approach.html

And I got some extra info that taught me why ACPI signals are important here: https://dataswamp.org/~solene/2021-07-30-openbsd-xidle-xlock.html


### Packages

Arch packages:

    acpid xsecurelock sxhkd xscreensaver

AUR packages:

    xidle

### Setup

1. Install `acpid`, then enable & start `acpid.service` (https://wiki.archlinux.org/title/Acpid)
1. Unstow the `x11` package

### Overview

`.xinitrc` spawns `~/.dotfiles/x11/.run-xsecurelock` with no arguments.  That script will call itself again with the `lock` argument if the computer idles for 10 min.
