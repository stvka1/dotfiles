# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

PROMPT="%F{236}%K{236}%F{green}  %K{35}%F{236}%F{black} %n@%m %K{193}%F{35}%F{234}%B %~ %b%k%F{193} %f"

precmd() {
	precmd() {
		print ""
	}
}
