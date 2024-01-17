#!/bin/bash

echo "================ configuring git ================\n"

git config --global user.name 'mrllama123'
git config --global user.email 'piesrule123@gmail.com'

echo "================ installing asdf ================\n"

https://github.com/asdf-vm/asdf.git ${home_dir}/distrobox/python-dev/.asdf --branch v0.13.1

echo "================ installing oh-my-zsh ================\n"

curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash -s  -- 'unattended'

cat ${full_script_path}/.zshrc > ${home_dir}/distrobox/python-dev/.zshrc;

echo "================ installing vscode ================\n"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y

echo "================ setup dev folder config ================\n"

mkdir -p ${home_dir}/distrobox/python-dev/dev


# echo "================ installing asdf plugins awscli & github-cli ================\n"

# source ~/.zshrc

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf plugin add github-cli 

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf install github-cli latest

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf global github-cli latest

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf plugin add awscli

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf install awscli latest

# . ${home_dir}/distrobox/python-dev/.asdf/bin/asdf global awscli latest


