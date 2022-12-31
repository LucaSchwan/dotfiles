CONFIGS="alacritty
nvim
lazygit
qtile
starship
tmux
xinit
Xresources
zsh"

for c in $CONFIGS
do
  stow -d /home/ehrenschwan $c
done
