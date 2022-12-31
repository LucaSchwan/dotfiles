CONFIGS="alacritty
nvim
lazygit
qtile
starship
tmux
xinit
Xresources
zsh"

stow_dir=$(dirname $(realpath $0))

for c in $CONFIGS
do
  stow -d $stow_dir $c
done
