#!/bin/bash

echo "================ install packages ================\n"

sudo apt install -y curl git openssh-client gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl git libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev zsh liblzma-dev fonts-noto powerline

echo "================ configuring git ================\n"

git config --global user.name 'mrllama123'
git config --global user.email 'piesrule123@gmail.com'

echo "================ installing ohmyzsh ================\n"

curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash -s  -- 'unattended'
chsh -s /usr/bin/zsh

echo "================ installing homebrew ================\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo "================ installing asdf ================\n"

brew install asdf

echo "================ installing vscode ================\n"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y


