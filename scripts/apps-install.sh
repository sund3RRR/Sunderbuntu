apt update --assume-yes && apt upgrade --assume-yes


# installing gnome-software-center
apt install --install-suggests --assume-yes gnome-software


#installing Mozilla Firefox from PPA
add-apt-repository --assume-yes ppa:mozillateam/ppa
apt --assume-yes update
apt --assume-yes install -t 'o=LP-PPA-mozillateam' firefox


# setting apt priorities to PPA Firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' > /etc/apt/apt.conf.d/51unattended-upgrades-firefox

firefox_file="/etc/apt/preferences.d/mozillateamppa"
touch "$firefox_file"

echo "Package: firefox*" > "$firefox_file"
echo "Pin: release o=LP-PPA-mozillateam" >> "$firefox_file"
echo "Pin-Priority: 501" >> "$firefox_file"


# installing google-chrome-stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i --force-depends google-chrome-stable_current_amd64.deb
apt-get install -f --assume-yes
rm google-chrome-stable_current_amd64.deb


# installing vlc mediaplayer
apt install --assume-yes vlc


# installing gnome configure apps
apt install --assume-yes gnome-shell-extensions gnome-tweaks dconf-editor


# installing system packages
apt install --assume-yes git dbus-x11 linux-headers ntfs-3g libfuse2 build-essential python3 python3-pip python3-venv


# installing terminal software
apt install --assume-yes htop s-tui inxi bat nala
