#! /usr/bin/bash


main_setup () {
    echo "-------- setup oh my zsh --------"

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    echo "-------- setup asdf --------"

    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

    echo "-------- setup vscode --------"

    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

    rm -f packages.microsoft.gpg

    sudo apt install apt-transport-https -y
    sudo apt update
    sudo apt install code -y

}

podman_setup () {

    echo "-------- setup podman --------"

    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL "https://download.opensuse.org/repositories/devel:kubic:libcontainers:unstable/xUbuntu_$(lsb_release -rs)/Release.key" \
    | gpg --dearmor \
    | sudo tee /etc/apt/keyrings/devel_kubic_libcontainers_unstable.gpg > /dev/null
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/devel_kubic_libcontainers_unstable.gpg]\
        https://download.opensuse.org/repositories/devel:kubic:libcontainers:unstable/xUbuntu_$(lsb_release -rs)/ /" \
    | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:unstable.list > /dev/null
    sudo apt-get update -qq
    sudo apt-get -qq -y install podman

    sudo usermod --add-subuids 10000-65536 $USER
    sudo usermod --add-subgids 10000-65536 $USER
    cat << EOF > /etc/containers/containers.conf
    [containers]
    netns="host"
    userns="host"
    ipcns="host"
    utsns="host"
    cgroupns="host"
    log_driver = "k8s-file"
    [engine]
    cgroup_manager = "cgroupfs"
    events_logger="file"
EOF

}

docker_setup () {
    echo "-------- setup docker --------"

    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

    sudo systemctl enable --now docker

    sudo usermod -aG docker $USER

}

main_setup

if [[ $# -eq 0 ]] ; then
    podman_setup
elif [[ $0 -eq "docker" ]] ; then
	docker_setup
else
	podman_setup
fi




