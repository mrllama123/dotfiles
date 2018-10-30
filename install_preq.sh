#!/bin/bash
sudo pacman -Syu

# install preq
sudo pacman -S firefox git yay code arc-gtk-theme jq zsh termite light-locker
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
yay -S numix-icon-theme-git numix-circle-icon-theme-git 

# download repo
git clone https://github.com/unix121/i3wm-themer
cd i3wm-themer/

# install preq and setup for themer
chmod u+x ./install_arch.sh
./install_arch.sh
sudo pip install -r requirements.txt
cd src/
sed -i  's+/v/+/bob/+g' config.yaml

# backup config
mkdir ~/theme-backups/one
python i3wm-themer.py --config config.yaml --backup /home/bob/theme-backups/one

#install theme
python i3wm-themer.py --config config.yaml --install defaults

python i3wm-themer.py --config config.yaml --load themes/000.json

