#!/bin/bash
sudo pacman -Syu

# install apps
sudo pacman -S firefox yay code jq termite git vim zsh powerline pacman

# ui libarys
sudo pacman -S qt5-base kvantum-manjaro kvantum-qt5 compton

#i3
sudo pacman -S pcmanfm-gtk3 i3-gaps i3exit powerline i3lock i3blocks lxappearance-gtk3 rofi

# aur install
yay -S numix-icon-theme-git numix-circle-icon-theme-git 

#install oh my zsh
#git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#cp ~/.zshrc ~/.zshrc.orig
#cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
#chsh -s /bin/zsh

# install spacevim
#curl -sLf https://spacevim.org/install.sh | bash

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc


# download repo
git clone https://github.com/unix121/i3wm-themer
cd i3wm-themer/

# install preq and setup for themer
chmod u+x ./install_arch.sh
./install_arch.sh



# sudo pip install -r requirements.txt
# cd src/
# sed -i  's+/v/+/bob/+g' config.yaml

# # backup config
# mkdir ~/theme-backups/one
# python i3wm-themer.py --config config.yaml --backup /home/bob/theme-backups/one

# #install theme
# python i3wm-themer.py --config config.yaml --install defaults

# python i3wm-themer.py --config config.yaml --load themes/000.json

