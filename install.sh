#!/usr/bin/env bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp ~/dotfiles/gnome-terminal-cursor-shape.sh ~/.gnome-terminal-cursor-shape.sh
chmod +x ~/.gnome-terminal-cursor-shape.sh
