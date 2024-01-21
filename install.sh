sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo echo "[chaotic-aur]" >> /etc/pacman.conf
sudo echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf

sudo pacman -Sy --needed xorg xorg-xinit base-devel git wget neovim nitrogen ttf-font-awesome ttf-jetbrains-mono mpv feh htop fish nemo rofi pluma firefox pavucontrol noto-fonts-emoji nerd-fonts pulseaudio nordic-theme nordzy-icon-theme python-pip nodejs npm xf86-video-intel dunst

sudo mkdir /etc/X11/xorg.conf.d/
sudo touch /etc/X11/xorg.conf.d/20-intel.conf
sudo echo 'Section "Device"' >> /etc/X11/xorg.conf.d/20-intel.conf
sudo echo '  Identifier "Intel Graphics"' >> /etc/X11/xorg.conf.d/20-intel.conf
sudo echo '  Driver "intel"' >> /etc/X11/xorg.conf.d/20-intel.conf
sudo echo '  Option "TearFree" "true"' >> /etc/X11/xorg.conf.d/20-intel.conf
sudo echo '  Option "TripleBuffer" "On"' >> /etc/X11/xorg.conf.d/20-intel.conf
sudo echo 'EndSection' >> /etc/X11/xorg.conf.d/20-intel.conf

mkdir /home/$USER/.config
cp -r ./config/* /home/$USER/.config

cd ./dwm-config/
tar -xf ./dwm-config.tar.gz
rm ./dwm-config.tar.gz
cd ..

cd ./st-0.9
tar -xf ./st-0.9.tar.gz
rm ./st-0.9.tar.gz
cd ..

cd ./config
tar -xf ./config.tar.gz
rm ./config.tar.gz
cd ..

cd ./dwm-config/
sudo make clean install

cd ..

cd ./st-0.9/
sudo make clean install

cp ./xinitrc /home/$USER/.xinitrc
chmod +x /home/$USER/.xinitrc

sudo touch /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo 'Section "InputClass"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        Identifier "touchpad"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        MatchIsTouchpad "on"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        Driver "libinput"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        Option "Tapping" "on"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        Option "TappingButtonMap" "lrm"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo '        Option "ScrollMethod" "twofinger"' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo 'EndSection' >> /etc/X11/xorg.conf.d/90-touchpad.conf

mkdir /home/$USER/.git
cp -r ./dwm-config /home/$USER/.git
cp -r ./st-0.9 /home/$USER/.git
chmod +x /home/$USER/.git/dwm-config/bar.sh
