if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "🐠 fish 🐠"

# set env
set PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/.vls $HOME/apps/node/bin $HOME/.gobin $HOME/.codon/bin $HOME/.dapr/bin $PATH
set -gx ATUIN_NOBIND true
set -gx EDITOR /usr/local/bin/nvim
set -gx BAT_THEME TwoDark

starship init fish | source
zoxide init fish --cmd c | source
navi widget fish | source

# atuin config
atuin init fish | source
bind \cr _atuin_search

rtx env -s fish | source

# rename commands
alias vi='nvim'
alias gvi='glrnvim'
alias nv='neovide'
alias ls='lsd'
alias lt='ls --tree'
alias ll='ls -l'
alias cat='bat -p'
alias curl='curlie'
alias gu='gitui'
alias tx='tmux'
alias vir='vi -R'
alias ra='ranger'
alias pe='poetry'
alias clangd='$HOME/apps/clangd/bin/clangd'
alias v='$HOME/apps/vlang/v'
alias kl=kubectl
alias ss='mcfly search'
alias zj='zellij'
abbr lg lazygit

# Wasmer
set WASMER_DIR /home/x/.wasmer
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
