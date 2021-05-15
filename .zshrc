#prompt

PROMPT='%F{#98C379}%n%f at %F{#E06C75}%T%f %~ $ '

#export path to flutter
export PATH="$PATH:/Users/Luca_Schwan/dev_tools/flutter/bin"

#config aliases
alias c='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ca='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add' 
alias cm='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m'
alias cpush='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push origin master'
alias cpull='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME pull origin master'   

#ls aliases
alias la='ls -la'
alias l='ls -l'

#git aliases
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push origin master'

#emacs alias
alias e='emacsclient -n -c'

neofetch
