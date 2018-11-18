#!/usr/bin/env bash
#############################################################
# Scope: Install goodies on linux mint.
# Author: @jazio
#############################################################

# debug on/off.
# set -x
source mods/mod_upgrade_mint
source mods/mod_install_lamp
source mods/mod_install_graphics


# Colors. 0 = Normal; 1 = Bold.
RED=$'\e[1;31m'
GREEN=$'\e[0;32m'
YELLOW=$'\e[0;33m'
BLUE=$'\e[0;34m'
MAGENTA=$'\e[0;35m'
CYAN=$'\e[0;36m'
NO_COLOR=$'\e[0m'
# Background
BG_WHITE=$'\e[47m' # White

# Home.
home_path=$(echo $HOME)
echo "$homepath"



# Codecs.
#sudo apt-get install gstreamer1.0-libav gstreamer1.0-plugins-ugly-amr gstreamer1.0-plugins-ugly libgstreamer-plugins-bad1.0-0 gstreamer1.0-plugins-bad-videoparsers gstreamer1.0-plugins-bad-faad gstreamer1.0-plugins-bad libdvdnav4 libdvdread4

# Update system.
#sudo apt-get update        # Fetches the list of available updates
#sudo apt-get upgrade       # Strictly upgrades the current packages
#sudo apt-get dist-upgrade  # Installs updates (new ones)

# Or,
#sudo apt-get install wajig 
#When you want to update/upgrade fully your system
#wajig dailyupgrade -y
sudo ufw enable
# Install diff kernels tool
sudo apt-get install ukuu
cd /etc/default/

sed -i "s|GRUB_HIDDEN_TIMEOUT=Yes|GRUB_HIDDEN_TIMEOUT=|g" grub
sudo upgrade-grub


## declare an array variable
declare -a arr=("git" 
                "guake" "vim" "mc"
                "sublime-text"
                # Utilities
                "vlc" "filezilla" "solaar"
                "inkscape" "gimp" "scribus" "flowblade" "cups"
                "tux-type" "tuxmath" "GCompris" "kalgebra" "kig" "marble"
                )

## now loop through the above array
for i in "${arr[@]}"
do
   echo "Installing $i"
   apt-get install $i
   # or do whatever with individual element of the array
done



# CONFIGURATION
# You can access them using echo "${arr[0]}", "${arr[1]}" also

 # Create symlink to Docroot
 # todo Check if exists
 cd $homepath
 ln -s /var/www/html www

  # Create aliases for key repositories in .bash_alias
  # Check if exists
  # Check existing php modules. 
  apt-cache search php7
  # Restart Apache
  /etc/init.d/apache2 restart

# Configure php

# Install phpmyadmin

# Install phpstorm

# Customizations
# http://www.noobslab.com/2017/01/arc-theme-light-dark-versions-and-arc.html

# Powerline shell
cd ~
git clone https://github.com/powerline/fonts.git
cd ./fonts
./install.sh
cd ..
rm -rf fonts

git clone https://github.com/milkbikis/powerline-shell

# Powerline
# Add this in ~./bashrc

/*
function _update_ps1() {
    PS1="$(~/powerline-shell/powerline-shell.py --mode compatible $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
*/

# Arch Theme
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install arc-theme
# Arc Icons
sudo apt-get install arc-icons
sudo apt-get install vimix-gtk-themes
sudo apt-get install vimix-flat-themes


#todo Study how
# Install panel applets: screenshot

#Docs to read: https://community.linuxmint.com/tutorial/view/244
