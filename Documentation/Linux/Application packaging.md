install form package manager: (very safe and good)
- deb > debian, ubuntu...
- rpm > redhad fedora, open suse

dependency hell:
- older packages and newer packages conflict, breaking the system
(because a software needs a older version of a package and it breaks the new ones)
> nix os fixes the dependency hell issue

linux architecures: (both could be eigher 32bit or 64bit)
- arm
- x86


## Flatpack:
- bundles every dependency inside itself
- but common dependencies are used as runtimes to be reused?
- only for gaphical apps
- hosted in flathub mostly
- has sandbox: excluded access level like iphone
- does not need admin privliges for installing
- better security (or is it?)
- no dependency hell
- get the update soon as dev publishes instead of waiting for system to update

cons:
- tends to use more space
- does not follow system theme


## snaps:
- build once ship everywhere
- can test new features with "channels"

cons:
- have files system seprated and mounted as new drives (clutterd disks)
- auto updates
- not open source
- has to be downloaded form snap store
- way too slow
- does not always follow theme

## appimage:
- less secure than snap and flat
- everything bundles inside one file
- uses appimage hub
- no dependencies
- very portable
- takes too much speeds
- will not create app entry in lists