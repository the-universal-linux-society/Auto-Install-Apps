#! /bin/bash
# this script downloads all of my default applications for a list of different operating systems #

# ensure this script is run by the root user! # 

if [ "$EUID" -ne 0 ]; then
echo ""
echo "THIS SCRIPT REQUIRES 'SUDO' TO RUN!"
echo ""
sleep 2
exit 1
fi 

#-----------#
# MAIN MENU # 
#-----------#

while true; do
clear
echo ""
echo " LINUX  "
echo ""
echo "1 > FEDORA"
echo "2 > DEBIAN"
echo "3 > ARCH"
echo "4 > OPENSUSE"
echo "5 > SOLUS"
echo "6 > DOWNLOAD EXTRA FONTS"
echo "7 > EXIT"

echo ""
read -p " CHOOSE YOUR OPTION (1-7) : " choice

# applications listed below #

case $choice in
1) 
echo ""
echo "YOU CHOSE TO INSTALL APPLICATIONS FOR FEDORA"
sleep 3
echo ""
clear
echo ""
echo "FIRST, LET ME QUICKLY UPDATE YOUR SYSTEM!"
echo ""
sleep 3
dnf update -y 
echo ""
echo "NEXT, LET ME INSTALL YOUR DEFAULT SET OF APPLICATIONS"
echo ""
dnf install -y neofetch lolcat shotcut simplescreenrecorder steam corectrl wine winetricks plank timeshift mousepad protontricks peek discord thonny sysprof htop btop glances vlc gnome-software flatpak ufw rkhunter lynis ranger tldr
echo ""
echo "ALL APPLICATIONS INSTALLED!"
sleep 3
echo ""
echo "LET ME ADD THE FLATPAK REPO FOR YOU!"
sleep 3
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo "FLATPAK REPO ADDED!"
sleep 3
echo ""
echo "SCRIPT COMPLETE... YOUR SYSTEM IS READY TO USE!"
echo ""
sleep 3
;;

2) 
echo ""
echo "YOU CHOSE TO INSTALL APPLICATIONS FOR DEBIAN"
sleep 3
echo ""
clear
echo ""
echo "LET ME QUICKLY UPDATE YOUR SYSTEM!"
echo ""
sleep 3
apt update -y 
echo ""
echo "NEXT, LET ME INSTALL YOUR DEFAULT SET OF APPLICATIONS"
echo ""
apt install -y neofetch lolcat shotcut simplescreenrecorder steam wine winetricks plank timeshift mousepad protontricks peek thonny sysprof htop btop glances vlc flatpak gnome-software gufw rkhunter lynis ranger tldr
echo ""
echo "ALL APPLICATIONS INSTALLED!"
sleep 3
echo ""
echo "LET ME ADD THE FLATPAK REPO FOR YOU!"
sleep 3
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo "FLATPAK REPO ADDED!"
sleep 3
echo ""
echo "SCRIPT COMPLETE... YOUR SYSTEM IS READY TO USE!"
echo ""
sleep 3
;;

3)
echo ""
echo "YOU CHOSE TO INSTALL APPLICATIONS FOR ARCH-LINUX"
sleep 3
echo ""
clear
echo ""
echo "LET ME QUICKLY UPDATE YOUR SYSTEM!"
echo ""
sleep 3
pacman -Syu
echo ""
echo "NEXT, LET ME INSTALL YOUR DEFAULT SET OF APPLICATIONS"
echo ""
pacman -S neofetch shotcut steam corectrl wine winetricks plank timeshift mousepad peek discord sysprof htop btop glances vlc flatpak gnome-software gufw rkhunter lynis ranger tldr yay
echo ""
echo "ALL APPLICATIONS INSTALLED!"
sleep 3
echo ""
echo "LET ME ADD THE FLATPAK REPO FOR YOU!"
sleep 3
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo "FLATPAK REPO ADDED!"
sleep 3
echo ""
echo "SCRIPT COMPLETE... YOUR SYSTEM IS READY TO USE!"
echo ""
sleep 3
;;

4)
echo ""
echo "YOU CHOSE TO INSTALL APPLICATIONS FOR openSUSE"
sleep 3
echo ""
clear
echo ""
echo "LET ME QUICKLY UPDATE YOUR SYSTEM!"
echo ""
sleep 3
zypper update 
echo ""
echo "NEXT, LET ME INSTALL YOUR DEFAULT SET OF APPLICATIONS"
echo ""
zypper install neofetch shotcut simplescreenrecorder steam wine winetricks plank timeshift mousepad protontricks peek discord sysprof htop btop glances vlc flatpak gnome-software rkhunter lynis
echo ""
echo "ALL APPLICATIONS INSTALLED!"
sleep 3
echo ""
echo "LET ME ADD THE FLATPAK REPO FOR YOU!"
sleep 3
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo "FLATPAK REPO ADDED!"
sleep 3
echo ""
echo "SCRIPT COMPLETE... YOUR SYSTEM IS READY TO USE!"
echo ""
sleep 3
;;

5)
echo ""
echo "YOU CHOSE TO INSTALL APPLICATIONS FOR SOLUS LINUX"
sleep 3
echo ""
clear
echo ""
echo "LET ME QUICKLY UPDATE YOUR SYSTEM!"
echo ""
sleep 3
eopkg upgrade -y 
echo ""
echo "NEXT, LET ME INSTALL YOUR DEFAULT SET OF APPLICATIONS"
echo ""
eopkg install -y neofetch lolcat simplescreenrecorder steam corectrl wine winetricks plank mousepad protontricks peek discord thonny sysprof htop btop glances vlc flatpak gnome-software gufw
echo ""
echo "ALL APPLICATIONS INSTALLED!"
sleep 3
echo ""
echo "LET ME ADD THE FLATPAK REPO FOR YOU!"
sleep 3
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo "FLATPAK REPO ADDED!"
sleep 3
echo ""
echo "SCRIPT COMPLETE... YOUR SYSTEM IS READY TO USE!"
echo ""
sleep 3
;;

6)
echo ""
echo "YOU CHOSE DOWNLOAD EXTRA FONTS"
echo ""
sleep 3
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)" 
;;


7)
echo ""
echo "EXITING NOW" 
echo ""
exit 0
;;

*)
echo "INVALID CHOICE, YOU SMOKING CRACK?! (1-7)"
;;

esac
read -p "PRESS ANY BUTTON"
done

