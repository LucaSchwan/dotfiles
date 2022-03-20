# set starship config file to .config/starship/config.toml
export STARSHIP_CONFIG=~/.config/starship/config.toml

# ohmyzsh
export ZSH="$HOME/.oh-my-zsh"

plugins=(git
         colemak
         colored-man-pages
         sudo
         rust
         zsh-autosuggestions
         zsh-syntax-highlighting
        )

source $ZSH/oh-my-zsh.sh

# vi-mode
bindkey -v

# zsh-autosuggestions
bindkey '^ ' autosuggest-accept

# default exports
export TERM=xterm-256color
export EDITOR="emacsclient -n -c"

#export path to flutter
export PATH="$HOME/.nvm/versions/node/v16.13.0/lib/node_modules/ember-cli/bin/ember:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#export GOBIN path
export PATH=$PATH:$(go env GOPATH)/bin

#ls aliases
alias la='exa -la'
alias l='exa -l'

#git aliases
alias g='git'
alias gaa='git add .'
alias ga='git add'
alias gcm='git commit -m'
alias gdiff='git diff'
alias gpush='git push origin'
alias gpull='git pull'
alias gcheck='git checkout'
alias gstat='git status'

#emacs alias
alias e='emacsclient -n -c'
alias restart-emacs='killall emacs && emacs --daemon'

#term aliases
alias cl='clear && pfetch'
alias ..='cd ..'
alias ~='cd ~'
alias h='cd /home/ehrenschwan'

pfetch

TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# auto startx
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
source /usr/share/nvm/init-nvm.sh
eval "$(starship init zsh)"
