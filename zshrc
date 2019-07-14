# Source Prezto
if [[ -f "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source gruvbox 256 color palette
if [[ -d ~/.vim/plugged/gruvbox ]]; then
  source ~/.vim/plugged/gruvbox/gruvbox_256palette.sh
fi

source ~/.purepower

# nvm
export NVM_DIR="/home/harry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Alias
alias rmf="rm -rf"
