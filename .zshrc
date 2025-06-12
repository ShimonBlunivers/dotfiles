# Set where history is stored
HISTFILE=~/.zsh_history
HISTSIZE=10000        # how many commands kept in memory
SAVEHIST=10000        # how many commands saved to file

# Share history between sessions instantly
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Brew shellenv for Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# oh-my-posh for zsh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/catppuccin_macchiato.omp.json)"

export EDITOR="/home/linuxbrew/.linuxbrew/bin/nvim"
alias vim="nvim"

export PATH="$PATH:/usr/local/bin"

# Enable vi mode in zsh
bindkey -v

