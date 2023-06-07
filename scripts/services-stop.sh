systemctl disable --now bolt.service # Thunderbolt system service
systemctl disable --now colord.service # Manage, Install and Generate Color Profiles
systemctl disable --now cups-browsed.service # Make remote CUPS printers available locally
systemctl disable --now cups.service # CUPS Scheduler
systemctl disable --now fwupd.service # Firmware update daemon
systemctl disable --now ModemManager.service # Modem Manager


# masking services to disable them permanent
systemctl mask bolt.service colord.service cups-browsed.service cups.service fwupd.service ModemManager.service
