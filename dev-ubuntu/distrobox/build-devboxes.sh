#!/bin/bash

# Default values
home_dir=$HOME
user=$USER
ssh_key="${home_dir}/.ssh/id_ed25519.pub"


# Function to display help message
display_help() {
    echo "Usage: $0 [--home-dir <directory>] [--user <username>] [--ssh-key <path>] [--help]"
    echo "Options:"
    echo "  --home-dir <directory>  Specify the home directory (default: $HOME)"
    echo "  --user <username>       Specify the host user (default: $USER)"
    echo "  --ssh-key <path>        Specify the path to the ssh public key (default: $home_dir/.ssh/id_ed25519.pub)"
    echo "  --help                  Display this help message"
}

# Process command line arguments

while [[ $# -gt 0 ]]; do
    case $1 in
        --home-dir)
            home_dir="$2"
            shift 2
            ;;
        --user)
            user="$2"
            shift 2
            ;;
        --ssh-key)
            ssh_key="$2"
            shift 2
            ;;
        --help)
            display_help
            exit 0
            ;;
        *)
            echo "Invalid argument: $1"
            display_help
            exit 1
            ;;
    esac
done

export home_dir user ssh_key

echo "creating distrobox.ini file"

cat distrobox.template.ini | envsubst > distrobox.ini

echo "building & creating devboxes"

distrobox assemble create

