#!/bin/bash

dotfiles=$(realpath $(dirname "$0"))

mkdir -p ~/.config
mkdir -p ~/.config/i3

ln -s "${dotfiles}/vim" ~/.vim
ln -s "${dotfiles}/vim/vimrc" ~/.vimrc
ln -s "${dotfiles}/bashrc" ~/.bashrc
ln -s "${dotfiles}/gitconfig" ~/.gitconfig
ln -s "${dotfiles}/i3config" ~/.config/i3/config
ln -s "${dotfiles}/ranger" ~/.config/ranger
ln -s "${dotfiles}/inputrc" ~/.inputrc
