#!/bin/bash

echo "creating docker dev machine from image quay.io/toolbx-images/ubuntu-toolbox:22.04"


distrobox create --root \
  --image quay.io/toolbx-images/ubuntu-toolbox:22.04 \
  --additional-packages "systemd git curl zsh wget gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fonts-noto-color-emoji" \
  --yes \
  --init \
  --name dev1 \
  --home "~/distrobox/dev1" \
  --unshare-all
