#!/bin/bash

echo "------- install core apps ---------"

sudo pacman -Syu zsh stow

echo "------- setup oh my zsh visual-studio-code-bin --------"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


