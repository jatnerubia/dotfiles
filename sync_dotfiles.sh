#!/bin/bash

DOTFILES_DIR="$HOME/dev/dotfiles"

DOTFILES=(
    ".zshrc"
    ".wezterm.lua"
    ".tmux.conf"
    ".config/lazygit"
    ".config/nvim"
    ".config/skhd"
    ".config/yabai"
)

for DOTFILE in "${DOTFILES[@]}"; do
    echo "Syncing $DOTFILE"

    if [ -d "$HOME/$DOTFILE" ]; then
        cp -r "$HOME/$DOTFILE/." "$DOTFILES_DIR/$DOTFILE/"
    else
        cp "$HOME/$DOTFILE" "$DOTFILES_DIR/"
    fi
done
