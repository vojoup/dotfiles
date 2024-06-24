f test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
brew install tree
brew install wget

# development tools
brew install git
brew install tmux
brew install zsh
brew install nvm
brew install zoxide
brew install exa
brew install bat
brew install fzf

# install neovim
brew install neovim/neovim/neovim

exit 0
