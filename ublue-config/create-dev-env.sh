#!/bin/bash

create_docker_dev () {
  echo "creating docker dev machine from image quay.io/toolbx-images/ubuntu-toolbox:22.04"

  # docker version 
  distrobox create --root \
    --image quay.io/toolbx-images/ubuntu-toolbox:22.04 \
    --additional-packages "systemd git curl zsh wget gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fonts-noto-color-emoji" \
    --yes \
    --init \
    --name dev1 \
    --home "/var/home/bob/distrobox/dev1" \
    --unshare-all

}

create_podman_dev () {

  echo "creating podman dev machine from image quay.io/toolbx-images/ubuntu-toolbox:22.04"

  # non docker version
  distrobox create --image quay.io/toolbx-images/ubuntu-toolbox:22.04 \
    --additional-packages "git curl zsh wget gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fonts-noto-color-emoji" \
    --yes \
    --name dev1 \
    --home "/var/home/bob/distrobox/dev1" \
    --unshare-all

}

if [[ $0 -eq "docker" ]]
  then create_docker_dev
  else create_podman_dev
fi



