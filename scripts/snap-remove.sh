# uninstalling depended snaps
snap_list_output=$(snap list)
snap_list=$(echo "$snap_list_output" | tail -n +2 | awk '{print $1}')
for snap_package in $snap_list; do
	snap remove --purge "$snap_package"
done


# uninstalling base snaps
snap_list_output=$(snap list)
snap_list=$(echo "$snap_list_output" | tail -n +2 | awk '{print $1}')
for snap_package in $snap_list; do
	snap remove --purge "$snap_package"
done


# disabling snapd
systemctl stop snapd


# uninstalling snapd
apt remove --autoremove --purge --assume-yes snapd gnome-software-plugin-snap


# setting apt preference to prevent snap installation
nosnap_file="/etc/apt/preferences.d/nosnap"
touch "$nosnap_file"

echo "Package: snapd" > "$nosnap_file"
echo "Pin: release a=*" >> "$nosnap_file"
echo "Pin-Priority: -10" >> "$nosnap_file"


# removing snap home directory and snap cache
original_user_home=$(getent passwd $SUDO_USER | cut -d: -f6)
rm -rf "$original_user_home/snap/"
rm -rf "/var/cache/snapd/"
