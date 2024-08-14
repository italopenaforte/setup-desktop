sudo apt install -y gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli --system-site-packages

# Turn off default Ubuntu extensions
gnome-extensions disable tiling-assistant@ubuntu.com
# gnome-extensions disable ubuntu-appindicators@ubuntu.com # This one is for showing tray icons in the top bar, like discord, rustdesk, etc.
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com

# Install new extensions for gnome

# https://extensions.gnome.org/extension/4548/tactile/
gext install tactile@lundal.io

# https://extensions.gnome.org/extension/3843/just-perfection/
gext install just-perfection-desktop@just-perfection

# https://extensions.gnome.org/extension/3193/blur-my-shell/
gext install blur-my-shell@aunetx

# https://extensions.gnome.org/extension/5090/space-bar/
gext install space-bar@luchrioh

# https://extensions.gnome.org/extension/1208/undecorate/
gext install undecorate@sun.wxg@gmail.com

#### Show status from the system
# https://extensions.gnome.org/extension/1460/vitals/
# gext install Vitals@CoreCoding.com

# https://extensions.gnome.org/extension/5219/tophat/
gext install tophat@fflewddur.github.io

#### Organize apps in alphabetical grid order
# https://extensions.gnome.org/extension/4269/alphabetical-app-grid/
gext install AlphabeticalAppGrid@stuarthayhurst

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/org.gnome.shell.extensions.tactile.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/just-perfection-desktop\@just-perfection/schemas/org.gnome.shell.extensions.just-perfection.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell\@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar\@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/
# sudo cp ~/.local/share/gnome-shell/extensions/Vitals\@CoreCoding.com/schemas/org.gnome.shell.extensions.vitals.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/tophat@fflewddur.github.io/schemas/org.gnome.shell.extensions.tophat.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/AlphabeticalAppGrid\@stuarthayhurst/schemas/org.gnome.shell.extensions.AlphabeticalAppGrid.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure Tactile
gsettings set org.gnome.shell.extensions.tactile col-0 1
gsettings set org.gnome.shell.extensions.tactile col-1 1
gsettings set org.gnome.shell.extensions.tactile col-2 0
gsettings set org.gnome.shell.extensions.tactile col-3 0
gsettings set org.gnome.shell.extensions.tactile row-0 1
gsettings set org.gnome.shell.extensions.tactile row-1 1
gsettings set org.gnome.shell.extensions.tactile row-2 0
gsettings set org.gnome.shell.extensions.tactile gap-size 10

# Configure Just Perfection
gsettings set org.gnome.shell.extensions.just-perfection animation 2
gsettings set org.gnome.shell.extensions.just-perfection dash-app-running true
gsettings set org.gnome.shell.extensions.just-perfection workspace true
gsettings set org.gnome.shell.extensions.just-perfection workspace-popup false

# Configure Blur My Shell
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder blur false
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen blur false
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot blur false
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list blur false
gsettings set org.gnome.shell.extensions.blur-my-shell.panel blur false
gsettings set org.gnome.shell.extensions.blur-my-shell.overview blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.overview pipeline 'pipeline_default'
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock brightness 0.6
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock sigma 30
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock static-blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock style-dash-to-dock 0

# Configure Space Bar
gsettings set org.gnome.shell.extensions.space-bar.behavior smart-workspace-names false
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-activate-workspace-shortcuts false
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-move-to-workspace-shortcuts true
gsettings set org.gnome.shell.extensions.space-bar.shortcuts open-menu "@as []"

# Configure Vitals
# gsettings set org.gnome.shell.extensions.vitals hide-icons true
# gsettings set org.gnome.shell.extensions.vitals hot-sensors "['__network-rx_max__']"
# gsettings set org.gnome.shell.extensions.vitals icon-style 0
# gsettings set org.gnome.shell.extensions.vitals network-speed-format 1

# Configure TopHat
gsettings set org.gnome.shell.extensions.tophat show-icons false
gsettings set org.gnome.shell.extensions.tophat show-cpu false
gsettings set org.gnome.shell.extensions.tophat show-disk false
gsettings set org.gnome.shell.extensions.tophat show-mem false
gsettings set org.gnome.shell.extensions.tophat network-usage-unit bits

# Unfortunately Vitals seems to maxout CPU on Intel, so let's turn it off by default there
# if grep -q "Intel" /proc/cpuinfo; then
#   gnome-extensions disable Vitals@CoreCoding.com
# fi

# Configure AlphabeticalAppGrid
gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position 'end'
