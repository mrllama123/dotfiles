#!/bin/bash

echo "================ install packages ================\n"

pamac install git curl brave-browser base-devel openssl zlib xz tk helix

echo "================ configuring git ================\n"

git config --global user.name 'mrllama123'
git config --global user.email 'piesrule123@gmail.com'

echo "================ installing ohmyzsh ================\n"

curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash -s  -- 'unattended'

echo "================ installing asdf ================\n"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

echo "================ setting up asdf plugins ================\n"


asdf plugin add github-cli

asdf install github-cli latest

asdf global github-cli latest

asdf plugin add awscli

asdf install awscli latest

asdf global awscli latest

asdf plugin add nodejs

asdf install nodejs latest

asdf global nodejs latest

gh config set git_protocol ssh

echo "================ installing & setting up python ================\n"

asdf plugin add python

asdf install python 3.11.7

asdf global python 3.11.7

python -m pip install --upgrade pip

pip install pipx


