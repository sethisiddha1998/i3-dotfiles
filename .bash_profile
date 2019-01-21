#
# ~/.bash_profile
#

export PATH=~/.local/bin:/root/.local/bin:$HOME/bin:$PATH

export EDITOR=nvim

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
	[[ $(fgconsole 2>/dev/null) == 1 ]] && 
	exec startx -- vt1 &> /dev/null; 
fi
