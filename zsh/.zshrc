# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#ZSH_THEME="bullet-train"
#ZSH_THEME="pi"
#ZSH_THEME="lambda-pure"
#ZSH_THEME="spaceship"
#ZSH_THEME="agnoster"

autoload -Uz compinit
compinit

alias vi='nvim'
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
alias v='$HOME/apps/vlang/v'
alias kl=kubectl
alias ss='mcfly search'
alias zj='zellij'
#alias ssh="kitty +kitten ssh"
#alias delta='~/apps/delta/delta'
#alias lzd='lazydocker'
#alias ping='prettyping'
export BAT_THEME="TwoDark"
export EDITOR=/usr/local/bin/nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.forgit/forgit.plugin.zsh ] && source ~/.forgit/forgit.plugin.zsh
eval "$(starship init zsh)"
export FZF_DEFAULT_OPTS="--height 50% --info inline --border --preview 'bat --style=numbers --color=always --line-range :5000 {}'"
export FZF_CTRL_T_COMMAND='fd --type f'
#export FORGIT_FZF_DEFAULT_OPTS="--exact --border --cycle --reverse --height '80%'"
export FORGIT_ADD_FZF_OPTS="--exact --border --cycle --reverse --height '80%'"
#export FORGIT_LOG_FZF_OPTS='--bind="ctrl-e:execute(echo {} |grep -Eo [a-f0-9]+ |head -1 |xargs git show |vim -)"'
#source <(curl -sSL git.io/forgit)

# eval foncifg
eval "$(pyenv init -)"
eval "$(zoxide init zsh --cmd c)"

# mcfly config
#eval "$(mcfly init zsh)"
#if [[ "$(defaults read -g AppleInterfaceStyle 2&>/dev/null)" != "Dark" ]]; then
#    export MCFLY_LIGHT=TRUE
#fi
#export MCFLY_KEY_SCHEME=vim
#export MCFLY_FUZZY=1  # support 1~5
#export MCFLY_RESULTS=15
#export MCFLY_DISABLE_MENU=truecolor

# atuin config                                                                                                                                                      
#atuin import zsh  -- import zsh history         
eval "$(atuin init zsh)"                                                                                                                                           

# ture color support
[[ $TMUX = "" ]] && export TERM="xterm-256color"
export COLORTERM=truecolor

zi_home="${HOME}/.zi"
source "${zi_home}/bin/zi.zsh"
# Next two lines must be below the above two
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

# Load a few important annexes, without Turbo
# (this is currently required for annexes)

#zi light wfxr/forgit
zi light z-shell/z-a-readurl
zi light z-shell/z-a-rust
zi light z-shell/z-a-patch-dl
zi light z-shell/z-a-bin-gem-node
zi light z-shell/F-Sy-H
zi light-mode for z-shell/z-a-meta-plugins
zi ice depth=1; zi light romkatv/powerlevel10k
#zi light denysdovhan/spaceship-prompt
zi light zsh-users/zsh-autosuggestions
zi light Aloxaf/fzf-tab
zi pack for dircolors-material    
zi light z-shell/z-a-default-ice

# disable sort when completing options of any command
zstyle ':completion:complete:*:options' sort false

# use input as query string when completing zlua
zstyle ':fzf-tab:complete:_zlua:*' query-string input

# (experimental, may change in the future)
# some boilerplate code to define the variable `extract` which will be used later
# please remember to copy them
local extract="
# trim input(what you select)
local in=\${\${\"\$(<{f})\"%\$'\0'*}#*\$'\0'}
# get ctxt for current completion(some thing before or after the current word)
local -A ctxt=(\"\${(@ps:\2:)CTXT}\")
# real path
local realpath=\${ctxt[IPREFIX]}\${ctxt[hpre]}\$in
realpath=\${(Qe)~realpath}
"

# give a preview of commandline arguments when completing `kill`
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm,cmd -w -w"
zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap

# give a preview of directory by exa when completing cd
#zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'exa -1 --color=always $realpath'

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
zstyle ':fzf-tab:complete:*:*' extra-opts --preview=$extract";$PREVIEW \$in"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
(( ! ${+functions[p10k]} )) || p10k finalize

source <(kubectl completion zsh)

source ~/.config/broot/launcher/bash/br

# Created by `pipx` on 2022-06-14 11:56:48
export PATH="$PATH:$HOME/.local/bin"
