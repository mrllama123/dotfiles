#!/bin/bash
sudo pacman -Syu

# install preq
sudo pacman -S firefox git yay code arc-gtk-theme jq termite light-locker
yay -S numix-icon-theme-git numix-circle-icon-theme-git 

#install oh my zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh


# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc

sudo pacman -Rs palemoon-bin gimp 

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

