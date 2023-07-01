#!/bin/sh

# this script sets up the neovim config
echo "Setting up neovim config"
nvim --headless -c "luafile init.lua" +qall
nvim --headless +PackerSync +qall
