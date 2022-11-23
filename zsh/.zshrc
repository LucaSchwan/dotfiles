# set starship config file to .config/starship/config.toml
export STARSHIP_CONFIG=~/.config/starship/config.toml

# default exports
export TERM=xterm-256color
export EDITOR="nvim"

export PATH="$HOME/.local/bin:$PATH"

# ls aliases
alias la='exa -la'
alias l='exa -l'

# git aliases
alias g='git'
alias gaa='git add .'
alias ga='git add'
alias gcm='git commit -m'
alias gdiff='git diff'
alias gpush='git push origin'
alias gpull='git pull'
alias gcheck='git checkout'
alias gstat='git status'

#term aliases
alias cl='clear && pfetch'
alias ..='cd ..'
alias h='cd ~'

pfetch

TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# source /usr/share/nvm/init-nvm.sh
eval "$(starship init zsh)"
