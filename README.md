# Sunderbuntu
Ubuntu improvements
# Ubuntu installation recommendations
The best choice is to use minimal install while installing Ubuntu Linux. Be sure to check in these two options.

![Ubuntu install](https://github.com/kabachoke/Sunderbuntu/blob/main/img/ubuntu-install.png?raw=true)

# Installation and running Sunderbuntu
### Install git
`sudo apt install git`
### Clone repository
```
git clone https://github.com/kabachoke/Sunderbuntu.git
cd Sunderbuntu
```
### Run with sudo
`sudo sh setup.sh`
### One line command
```
sudo apt install git && git clone https://github.com/kabachoke/Sunderbuntu.git && cd Sunderbuntu && sudo sh setup.sh
```
# Improvements

- All snaps, snap-store and snapd removed fully
- Firefox and Google-Chrome installed from apt
- Installed basic system packages
  - linux-headers
  - dbus-x11
  - ntfs-3g
  - libfuse2
  - build-essential
  - python3 with pip and venv
- Installed terminal software
  - htop
  - s-tui
  - inxi
  - bat (better **cat** utility)
  - nala (frontend for **apt** package manager)
- Removed services
  - bolt.service
  - colord.service
  - cups-browsed.service
  - cups.service
  - fwupd.service
  - ModemManager.service
- Gnome check-alive-timeout set to 30 sec
- vm.max_map_count set to 16777216
- DefaultTimeoutStopSec for services set to 15 sec
