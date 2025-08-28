# Preface
I'm making this guide while switching to arch linux, some of it might be applicable for other
distros, but don't count on it. This document serves primarily to document my Arch setup journey
for future reference.

# Installation (Arch)
I used archinstall, which was pretty easy. Installed alongside NixOS and manually partitioned with
no trouble at all. Both distros still work. I had some issues with the bootloader, but I'm pretty
sure that's only because my NixOS was set up to mount the boot partition differently (at /boot/efi).

archinstall, would recommend.

# Programs
My major, and only, concern switching over from NixOS was how I was gonna keep track of my packages.
The installs.txt file is my current solution. I've tried to keep track of every manually installed
package so far (official packages, I won't include AUR in this list).

The goal here is that you'll be able to quickly install every package (either manually or through
some fancy command engineering) and get a pretty decent representation of all the packages I use.
As such, each package in this list can be installed with the default pacman configuration, none of
them require multilib or AUR or anything like that (I'm not sure if archinstall modifies the pacman
config, but that's my base so ymmv).

Any AUR packages I install are listed in aur.txt in the same format. There's no default solution for
easily installing these from a list, so I'll leave that as an exercise for the reader. I'm starting
off with makepkg and likely switching to yay once I understand what's going on.

Additional packages that I consider important are listed in additional.txt. These are bigger and not
considered strictly necessary for a reproduced install. Some of the packages may require special
pacman configuration such as multilib (Steam as of now).

Run `# pacman -Syu $(cat installs.txt)` to install all the packages listed; run again with
installs.txt replaced by additional.txt if you want the additional packages as well. 

At some point in this process, you'll run into packages that make you choose a dependency that works
for your system. This config does not install those for you, I don't know your system.

# Configuration
Finally, we're sitting in a yadm repository, so it's about time we get to the config!

Most of the config should just work, but my NixOS heritage compulses me to configure the system as
well. As such, there's a .root-config directory that holds some system-level configuration, and you
can choose to copy this over in the bootstrap (or you can set it up yourself).

## Post yadm
You'll probably want to set your themes with `gsettings` at some point. Make sure you have the right
gpu drivers. Swapfiles, sleepmodes, hibernation, etc. none of that stuff is covered in this repo.
