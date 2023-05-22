#!/usr/bin/env bash

# If directory exists
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    exit
fi

echo "Cloning tmux plugin manager"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source $HOME/.config/tmux/tmux.conf
