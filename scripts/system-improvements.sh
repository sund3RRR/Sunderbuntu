# setting gnome check-alive-timeout to 30 sec
current_user=$(whoami)
sudo -u "$current_user" dbus-launch gsettings set org.gnome.mutter check-alive-timeout 30000


# setting max map count to prevent games crushes
echo "vm.max_map_count=16777216" >> /etc/sysctl.conf


# setting max service stop timeout to 15 sec
sed -i 's/#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=15s/' /etc/systemd/system.conf
