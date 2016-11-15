# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/harry830622/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Ignore duplicate lines in history
setopt HIST_IGNORE_DUPS

# Alias

alias mkdir="mkdir -vp"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"

# Pacman
alias pacupg="sudo pacman -Syu"     # Synchronize with repositories and then upgrade packages that are out of date on the local system.
#alias pacdl="pacman -Sw"            # Download specified package(s) as .tar.xz ball
alias pacin="sudo pacman -S"        # Install specific package(s) from the repositories
alias pacins="sudo pacman -U"       # Install specific package not from the repositories but from a file
#alias pacre="sudo pacman -R"        # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem="sudo pacman -Rns"     # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep="pacman -Si"           # Display information about a given package in the repositories
alias pacreps="pacman -Ss"          # Search for package(s) in the repositories
alias pacloc="pacman -Qi"           # Display information about a given package in the local database
alias paclocs="pacman -Qs"          # Search for package(s) in the local database
#alias paclo="pacman -Qdt"           # List all packages which are orphaned
#alias pacc="sudo pacman -Scc"       # Clean cache - delete all the package files in the cache
#alias paclf="pacman -Ql"            # List all files installed by a given package
#alias pacown="pacman -Qo"           # Show package(s) owning the specified file(s)
#alias pacexpl="pacman -D --asexp"   # Mark one or more installed packages as explicitly installed
#alias pacimpl="pacman -D --asdep"   # Mark one or more installed packages as non explicitly installed

# Enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

export NVM_DIR="/home/harry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
