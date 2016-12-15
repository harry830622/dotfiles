#!/usr/bin/env bash

dot_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "dot_dir=$dot_dir\nexport dot_dir" > ~/.myenv

if [[ ! -d ~/.zprezto ]]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
fi

if [[ ! -d ~/.vim ]]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d ~/.tmux ]]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

ln -s "$dot_dir/zsh/zpreztorc" ~/.zpreztorc
ln -s "$dot_dir/zsh/zshrc" ~/.zshrc
ln -s "$dot_dir/vim/vimrc" ~/.vimrc
ln -s "$dot_dir/tmux/tmux.conf" ~/.tmux.conf
ln -s "$dot_dir/git/gitconfig" ~/.gitconfig
ln -s "$dot_dir/git/gitignore" ~/.gitignore
