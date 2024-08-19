#!/bin/bash

echo "======== installing brew ========="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/bob/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "======== installing brew packages ========="

brew install --cask iterm2 xbar 1password rectangle obsidian
brew install openssl readline sqlite3 xz zlib tcl-tk

echo "======== installing oh my zsh  ========="
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp ~/.zshrc ~/.zshrc-old
curl https://raw.githubusercontent.com/mrllama123/dotfiles/master/mac-laptop/.zshrc > ~/.zshrc

echo "======== setting up fonts ========="
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts &&./install.sh && cd.. && rm -rf fonts

echo "======== installing asdf  ========="

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0


echo "================ setting up asdf github ================\n"


asdf plugin add github-cli


asdf install github-cli latest

asdf global github-cli latest

gh config set git_protocol ssh

echo "================ installing & setting up aws  =================\n"

asdf plugin add awscli

asdf install awscli latest

asdf global awscli latest


echo "================ installing & setting up python ================\n"

asdf plugin add python

asdf install python 3.11.7

asdf global python 3.11.7

python -m pip install --upgrade pip

pip install pipx

pipx install poetry poethepoet

echo "================ installing & setting up node  =================\n"

asdf plugin add nodejs

asdf install nodejs $(asdf nodejs resolve lts --latest-available)

asdf global nodejs $(asdf nodejs resolve lts --latest-available)

