#!/bin/sh

# this script sets up the neovim config
echo "Setting up neovim config"
nvim -c "lua require('jpducky')" -c quit
nvim -c "PackerSync" -c quit
