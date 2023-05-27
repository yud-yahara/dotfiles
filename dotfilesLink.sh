#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.screenrc ~/.screenrc
ln -fs "$HOME/dotfiles/.config/starship.toml" "$HOME/.config/starship.toml"
ln -sf ~/dotfiles/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
