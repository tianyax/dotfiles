if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "🐠 fish 🐠"

set -g theme_display_git no
# set env
set PATH $PATH
set -gx ATUIN_NOBIND true
set -gx EDITOR /usr/local/bin/nvim
set -gx BAT_THEME gruvbox-dark
set -gx FZF_DEFAULT_OPTS "--height=80% --layout=reverse --info=inline --border --margin=1 --padding=1"
set -gx fish_term24bit 1
set -gx RUSTC_WRAPPER $HOME/.cargo/bin/sccache
set -gx FZF_CTRL_T_COMMAND "fd --type f"
set -x LC_CTYPE en_US.UTF-8

starship init fish | source
zoxide init fish --cmd c | source
navi widget fish | source

# atuin config
atuin init fish | source
bind \cr _atuin_search

# rename commands
alias kubectl='minikube kubectl --'
alias vi='nvim'
alias nv='/Applications/Neovide.app/Contents/MacOS/neovide --fork --srgb'
alias ls='exa'
alias lt='ls --tree'
alias ll='ls -l'
alias cat='bat -p'
alias cd='c'
alias curl='curlie'
alias gu='gitui'
alias tx='tmux'
alias vir='vi -R'
alias ra='ranger'
alias pe='poetry'
alias kl=kubectl
alias zj='zellij'
abbr lg lazygit

# Wasmer
set WASMER_DIR /home/x/.wasmer
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
fish_add_path /Users/x/.modular/bin

set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
