#! /bin/bash

echo "================ configuring adsf aws and github cli ================\n"

asdf plugin add github-cli

asdf install github-cli latest

asdf global github-cli latest

asdf plugin add awscli

asdf install awscli latest

asdf global awscli latest

gh config set git_protocol ssh


