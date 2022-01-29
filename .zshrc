# Find and set branch name var if in git repository.
function git_branch_name()
{
    if [[ -d .git ]]
    then
        branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
        git_status=$(git status | grep 'nothing to commit')
        if [[ $branch == "" ]]
        then
            :
        else
            if [[ $git_status == "" ]]
            then
          echo '- (%F{#E06C75}'$branch'%f)'
            else
                echo '- (%F{#98C379}'$branch'%f)'
            fi      
        fi
    fi
}

# default exports
export TERM=xterm-256color
export EDITOR="emacsclient -n -c"

# Enable substitution in the prompt.
setopt prompt_subst
#prompt
PROMPT='%F{#98C379}%n%f at %F{#E06C75}%T%f $(git_branch_name) %~ $ '

#export path to flutter
export PATH="$HOME/.nvm/versions/node/v16.13.0/lib/node_modules/ember-cli/bin/ember:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#config aliases
alias c='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ca='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add' 
alias cm='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m'
alias cdiff='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME diff'
alias cpush='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push origin main'
alias cpull='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME pull origin main'   

#ls aliases
alias la='ls -la'
alias l='ls -l'

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
