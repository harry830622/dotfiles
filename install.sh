#!/usr/bin/env bash

dot_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "dot_dir=$dot_dir\nexport dot_dir" > ~/.myenv

read -r -p "Install zsh config? [Y/n] "
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  if [[ ! -d ~/.zprezto ]]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
  fi
  ln -sf "$dot_dir/zsh/zpreztorc" ~/.zpreztorc
  ln -sf "$dot_dir/zsh/zshrc" ~/.zshrc
fi

read -r -p "Install vim config? [Y/n] "
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  if [[ ! -d ~/.vim ]]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
  ln -sf "$dot_dir/vim/vimrc" ~/.vimrc
fi

read -r -p "Install tmux config? [Y/n] "
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  if [[ ! -d ~/.tmux ]]; then
    git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
  fi
  ln -sf "$dot_dir/tmux/tmux.conf" ~/.tmux.conf
fi

read -r -p "Install git config? [Y/n] "
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  ln -sf "$dot_dir/git/gitconfig" ~/.gitconfig
  ln -sf "$dot_dir/git/gitignore" ~/.gitignore
fi

read -r -p "Install utils? [Y/n] "
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  if [[ ! -f ~/.z.sh ]]; then
    curl -fLo ~/.z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
  fi
fi
