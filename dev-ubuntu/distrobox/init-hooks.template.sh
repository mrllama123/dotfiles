#!/bin/bash

echo "================ configuring git ================\n"

git config --global user.name 'mrllama123'
git config --global user.email 'piesrule123@gmail.com'

echo "================ installing ohmyzsh ================\n"

curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash -s  -- 'unattended'

echo "================ installing asdf ================\n"

git clone https://github.com/asdf-vm/asdf.git ${home_dir}/distrobox/python-dev/.asdf --branch v0.14.0

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


echo "================ installing  & setting upasdf plugins awscli & github-cli ================\n"


asdf plugin add github-cli

asdf install github-cli latest

asdf global github-cli latest

asdf plugin add awscli

asdf install awscli latest

asdf global awscli latest

gh config set git_protocol ssh


echo "================ installing & setting up python ================\n"

asdf plugin add python

asdf install python 3.11.7

asdf global python 3.11.7

python -m pip install --upgrade pip

pip install pipx



