#!/bin/sh

dotfiles=$(dirname "$0")

ln -s "${dotfiles}/vim" ~/.vim
ln -s "${dotfiles}/vim/vimrc" ~/.vimrc
ln -s "${dotfiles}/bashrc" ~/.bashrc
ln -s "${dotfiles}/gitconfig" ~/.gitconfig
ln -s "${dotfiles}/i3config" ~/.config/i3/config
ln -s "${dotfiles}/ranger" ~/.config/ranger
