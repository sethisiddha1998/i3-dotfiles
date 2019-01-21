#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias please='sudo'
alias bye='poweroff'
alias fastai='conda activate fastai'
alias nf='neofetch --kitty .config/neofetch/image/'
# Kittens
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
alias vim="nvim"

PS1='[\u@\h \W]\$ '

source <(kitty + complete setup bash)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
 
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then 
  eval "$(pyenv virtualenv-init -)"; 
fi

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
