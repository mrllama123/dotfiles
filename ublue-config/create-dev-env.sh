#!/bin/bash

create_docker_dev_separate_instance () {
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

create_podman_dev_separate_instance () {

  echo "creating podman dev machine from image quay.io/toolbx-images/ubuntu-toolbox:22.04"

  # non docker version
  distrobox create --image quay.io/toolbx-images/ubuntu-toolbox:22.04 \
    --additional-packages "git curl zsh wget gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fonts-noto-color-emoji" \
    --yes \
    --name dev1 \
    --home "/var/home/bob/distrobox/dev1" \
    --unshare-all

}


create_podman_python () {
  distrobox create --image quay.io/toolbx-images/ubuntu-toolbox:22.04 \
    --additional-packages "podman podman-docker git curl zsh wget gpg make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev fonts-noto-color-emoji" \
    --yes \
    --name dev-python \
    --home "/var/home/bob/distrobox/dev-python" 

}

if [[ $# -eq 0 ]] ; then
  create_podman_dev_separate_instance
elif [[ $0 -eq "docker" ]] ; then
	create_docker_dev_separate_instance
else
	create_podman_dev_separate_instance
fi