
#!/bin/bash

echo "================ setting up asdf plugins ================\n"


asdf plugin add github-cli

asdf install github-cli latest

asdf global github-cli latest

asdf plugin add awscli

asdf install awscli latest

asdf global awscli latest

gh config set git_protocol ssh

echo "================ installing & setting up python ================\n"

asdf plugin add python

asdf install python 3.11.7

asdf global python 3.11.7

python -m pip install --upgrade pip

pip install pipx
