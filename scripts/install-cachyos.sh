#!/bin/bash

echo "------- install core apps ---------"

sudo pacman -Syu zsh stow base-devel openssl  xz tk zstd brave-bin flatpak code


echo "------- set git -------"

ssh-keygen -t ed25519 -C "piuesrule123@gmail.com"

git config --global user.name "mrllama123"

git config --global user.email "piuesrule123@gmail.com"

echo "------- setup oh my zsh visual-studio-code-bin --------"

sh  -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s /usr/bin/zsh

echo "------- setup environment with stow --------"
touch ~/.env-vars-secrets

