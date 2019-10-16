#!/usr/bin/env bash

RCRC="${HOME}/workspace/isv-ci-workstation-config/dotfiles/rcrc" rcup -v


# Install credalert
wget https://s3.amazonaws.com/cred-alert/cli/current-release/cred-alert-cli_darwin
chmod +x cred-alert-cli_darwin
mv cred-alert-cli_darwin /usr/local/bin/cred-alert-cli
cred-alert-cli update

if [ ! -d$HOME/workspace/git-hooks-core ]; then
  git clone https://github.com/pivotal-cf/git-hooks-core.git $HOME/workspace/git-hooks-core
fi
