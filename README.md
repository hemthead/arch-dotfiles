# Preface
I'm making this guide while switching to arch linux, some of it might be applicable for other
distros, but don't count on it. This document serves primarily to document my Arch setup journey
for future reference.

If you want to use this config as a base for your own, that's perfectly fine! Promise to show me how
it turns out? I'm @hemthead anywhere I'm at.

The recommended way to use this repo if you aren't me is to fork it on github and then `yadm clone`
from there. Otherwise, you might end up with your origin pointing to this repo and that's maybe not
what you want.

# Installation (Arch)
I used archinstall, which was pretty easy. Installed alongside NixOS and manually partitioned with
no trouble at all. Both distros still work. I had some issues with the bootloader, but I'm pretty
sure that's only because my NixOS was set up to mount the boot partition differently (at /boot/efi).

archinstall, would recommend.

# Packages
My major (and only) concern switching over from NixOS was how I was gonna keep track of my packages.
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

After you clone the repo, you can run `yadm bootstrap` to do a bit more setup (such as enable
systemd services, set zsh as default, etc.). Please read the bootstrap script beforehand, it's super
simple and you shouldn't be running random scripts off the internet without reading them first. I
can tell if you don't give it a once-over =|;)

## Post yadm
You'll probably want to set your themes with `gsettings` at some point. Make sure you have the right
gpu drivers, swapfiles, sleepmodes, hibernation, etc. none of that stuff is covered in this repo.

If you choose to use GRUB, you'll wanna set that up now as well. Make sure that you actually install
the grub config from `grub-makecfg`. (I had a lot of trouble due to unrelated shenanigans happening
on my pc).

If you went with zram during the install, you'll find that you can't hibernate on that, and you need
to manually set up a swap file/partition, as well as set the resume kernel paramter and configure
initramfs. All of this is detailed in the https://wiki.archlinux.org article.

### Steam
Steam is known to cause a little trouble on linux. If you're encountering significantly slowed
download speeds compared to windows, I'd recommend reading through
[this](https://steamcommunity.com/app/221410/discussions/0/4038104598701386066/) steam discussion,
it helped me out a lot.

# End
Enjoy your new configuration, I hope you like it!
