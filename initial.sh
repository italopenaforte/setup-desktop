. ~/setup-desktop/terminal/zsh.sh

## Install requireds
for script in ~/setup-desktop/required/*.sh; do . $script; done

## Install and configure desktop
for script in ~/setup-desktop/desktop/*.sh; do . $script; done

## Install Apps
for script in ~/setup-desktop/apps/*.sh; do . $script; done
