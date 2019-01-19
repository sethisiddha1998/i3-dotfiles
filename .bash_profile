#
# ~/.bash_profile
#

export PATH=~/.local/bin:/root/.local/bin:$HOME/bin:$PATH

export EDITOR=vim

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
	[[ $(fgconsole 2>/dev/null) == 1 ]] && 
	exec startx -- vt1 &> /dev/null; 
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then 
  eval "$(pyenv virtualenv-init -)"; 
fi


