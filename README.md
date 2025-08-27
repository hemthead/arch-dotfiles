# Preface
I'm making this guide while switching to arch linux, some of it might be applicable for other
distros, but don't count on it. This document serves primarily to document my Arch setup journey
for future reference.

# Installation (Arch)
I used archinstall, which was pretty easy. Installed alongside NixOS and manually partitioned with
no trouble at all. Both distros still work. I had some issues with the bootloader, but I'm pretty
sure that's only because my NixOS was set up to mount the boot partition differently (at /boot/efi).

archinstall, would reccommend.

# Programs
My major, and only, concern switching over from NixOS was how I was gonna keep track of my packages.
The installs.txt file is my current solution. I've tried to keep track of every manually installed
package so far (official packages, I won't include AUR in this list).

The goal here is that you'll be able to quickly install every package (either manually or through
some fancy command engineering) and get a pretty decent representation of all the packages I use.

I'll likely maintain a list of AUR packages as well, if/when I install some.

# Configuration
Finally, we're sitting in a yadm repository, so it's about time we get to the config!

Most of the config should just work, but my NixOS heritage compulses me to configure the system as
well. As such, there's a .root-config directory that holds some system-level configuration, and you
can choose to copy this over in the bootstrap (or you can set it up yourself).
