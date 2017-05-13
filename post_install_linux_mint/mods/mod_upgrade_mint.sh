# Codecs.
sudo apt-get install gstreamer1.0-libav gstreamer1.0-plugins-ugly-amr gstreamer1.0-plugins-ugly libgstreamer-plugins-bad1.0-0 gstreamer1.0-plugins-bad-videoparsers gstreamer1.0-plugins-bad-faad gstreamer1.0-plugins-bad libdvdnav4 libdvdread4

# Update system.
#sudo apt-get update        # Fetches the list of available updates
#sudo apt-get upgrade       # Strictly upgrades the current packages
#sudo apt-get dist-upgrade  # Installs updates (new ones)

# Or,
sudo apt-get install wajig 
#When you want to update/upgrade fully your system
wajig dailyupgrade -y
