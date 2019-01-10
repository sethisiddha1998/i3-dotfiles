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
alias neofetch='neofetch --kitty .config/neofetch/image/'
# Kittens
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
PS1='[\u@\h \W]\$ '

source <(kitty + complete setup bash)

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
