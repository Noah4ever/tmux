#!/usr/bin/env bash

# If directory exists, exit
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    exit
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Source the tmux configuration file
tmux source $HOME/.config/tmux/tmux.conf

# Install plugins using TPM
$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
