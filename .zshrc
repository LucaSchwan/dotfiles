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
alias cpush='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push origin master'
alias cpull='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME pull origin master'   

#ls aliases
alias la='ls -la'
alias l='ls -l'

#git aliases
alias gaa='git add .'
alias ga='git add'
alias gcm='git commit -m'
alias gdiff='git diff'
alias gpsh='git push origin main'

#emacs alias
alias e='emacsclient -n -c'

#term aliases
alias cl='clear && pfetch'
alias ..='cd ..'
alias h='cd /home/ehrenschwan'

pfetch

# auto startx
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
source /usr/share/nvm/init-nvm.sh
