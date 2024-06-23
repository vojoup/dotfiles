# -------------------------------------------------------------------
# Oh-My-ZSH
# -------------------------------------------------------------------
# Path to your oh-my-zsh installation.
export ZSH="/Users/vojtechoupicky/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  zsh-autosuggestions
  zsh-syntax-highlighting
  brew
  node
  npm
)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# NVM
# -------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# -------------------------------------------------------------------
# Startship setup
# -------------------------------------------------------------------
eval "$(starship init zsh)"

export EDITOR=nvim

export VOLTA_HOME="$HOME/.volta"
export LVIM_HOME="$HOME/.local/bin"
export GOPATH=$HOME/go

export PATH="$LVIM_HOME:$VOLTA_HOME/bin:$GOROOT/bin:$GOPATH/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/vojtechoupicky/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------
alias ll='exa -lbF --git --icons'
alias la='exa -labF --git --icons'
alias cat='bat'
alias nvim='env TERM=wezterm nvim'

# -------------------------------------------------------------------
# Setup zoxide
# -------------------------------------------------------------------
eval "$(zoxide init zsh)"

