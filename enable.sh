CONFIGS="alacritty
nvim
lazygit
qtile
starship
tmux
xinit
Xresources
zsh"

dir_path=$(dirname $(realpath $0))

for c in $CONFIGS
do
  stow -d $dir_path $c
done
