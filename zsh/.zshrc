# set starship config file to .config/starship/config.toml
export STARSHIP_CONFIG=~/.config/starship/config.toml

# default exports
export TERM=tmux-256color
export EDITOR="nvim"

# add stuff to path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/lib/node_modules:$PATH"
export PATH="$HOME/.config/yarn/global/node_modules$PATH"

# ls aliases
alias la='exa -la'
alias l='exa -l'
alias cdl='cd $1 && exa -la'

# lazygit alias
alias lg='lazygit'

# nvim alias
alias v=nvim

# git aliases
alias g='git'
alias gaa='git add .'
alias ga='git add'
alias gc='git commit -m'
alias gcl='git clone'
alias gd='git diff'
alias gp='git push origin'
alias gpl='git pull'
alias gch='git checkout'
alias gs='git status'

#term aliases
alias cl='clear && pfetch'
alias ..='cd ..'
alias h='cd ~'

pfetch

TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# source /usr/share/nvm/init-nvm.sh
eval "$(starship init zsh)"

# either start or connect to the tmux session TMUX if tmux isn't running
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

# auto-start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
