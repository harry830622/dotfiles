#!/bin/bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chmod +x ~/dotfiles/gnome-terminal-cursor-shape.sh
sudo cp ~/dotfiles/gnome-terminal-cursor-shape.sh /usr/local/bin
