#!/bin/bash

echo "Hello! This script will install the GRUB theme onto your system."
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please run 'sudo ./install.sh'"
    exit 1
fi
echo "Enter your name below to personalize the theme. (Press enter to skip)"
read -p "Please enter your name: " name

if [ -z "$name" ]; then
    echo "No name provided, proceeding without personalization."
else
    echo "Personalizing the theme with your name: $name"
    sed -i "9s/.*/	text = \"Hello $name\"/" countdown/theme.txt
    sed -i "18s/.*/	text = \"Hello $name\"/" countdown/theme.txt
fi

echo "Copying theme files to /boot/grub/themes/countdown..."
sudo cp -ruv countdown /boot/grub/themes/
echo "Setting GRUB_THEME in /etc/default/grub..."
echo "GRUB_THEME=\"/boot/grub/themes/countdown/theme.txt\"" | sudo tee -a /etc/default/grub
echo "Updating GRUB configuration..."
sudo update-grub
echo "Installation complete! You can now reboot your system to see the new GRUB theme."