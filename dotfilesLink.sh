#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
# ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.vim/undo
mkdir -p ~/.vim/colors
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# color for vim, neovim
git clone https://github.com/tomasr/molokai.git
cp -r ./molokai/colors/molokai.vim ~/.vim/colors/
cp -r ./molokai/colors/molokai.vim ~/.config/nvim/colors/
rm -rf ./molokai
