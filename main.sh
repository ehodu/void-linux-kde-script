echo "Welcome to Void Linux KDE installer script!"
sleep 2s
echo "Credits must be sent to github.com/tester"
sleep 3s

echo "What kind of installation you wanna do?"
echo "1 - Minimal"
echo "2 - Complete"
read op

if [ $op -eq 1 ]; then
    echo "Minimal installation starting..."
    sudo xbps-install -Sy kde5 konsole dolphin dbus xorg-minimal mesa-dri NetworkManager sddm pulseaudio
    sudo ln -s /etc/sv/dbus /var/service
    sudo ln -s /etc/sv/NetworkManager /var/service
    sudo ln -s /etc/sv/sddm /var/service

    echo "Script finished. Rebooting system..."
    sleep 2s
    sudo reboot
fi

if [ $op -eq 2 ]; then
    echo "Complete installation starting..."
    sudo xbps-install -Sy kde-plasma kde-baseapps xorg base-devel nano octoxbps pulseaudio bluez bluez-alsa NetworkManager kdegraphics-thumbnailers ffmpegthumbs

    sudo ln -s /etc/sv/dbus /var/service
    sudo ln -s /etc/sv/NetworkManager /var/service
    sudo ln -s /etc/sv/sddm /var/service
    sudo ln -s /etc/sv/bluetoothd /var/service
fi
