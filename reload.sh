# This is a utility to reload my shell configuration
# Some tools like neovim may need closing and opening for configuration to take effect
function sherman_reload() {
  source /etc/zprofile

  sherman_heading "Clear Shermandir"
  clear_shermandir

  sherman_heading "Reload sherman ruby"
  reload_sherman_ruby

  sherman_heading "Reload nvim config"
  echo "Removing nvim configuration files"
  rm -r $HOME/.config/nvim
  echo "Copying nvim"
  cp -r $SHERMAN/neovim $HOME/.config/nvim

  sherman_heading "Reloading tmuxinator config"
  echo "Removing tmuxinator folder"
  rm -r $HOME/.config/tmuxinator
  echo "Copying tmuxinator"
  cp -r $SHERMAN/tmuxinator $HOME/.config/tmuxinator
  echo "Copying private tmuxinator configs"
  cp $SHERMAN/private_tmuxinator/* $HOME/.config/tmuxinator

  sherman_heading "Reloading alacritty config"
  echo "Removing alacritty folder"
  rm -r $HOME/.config/alacritty
  echo "Copying alacritty"
  cp -r $SHERMAN/alacritty $HOME/.config/alacritty

  sherman_heading "Reloading puma-dev config"
  echo "Removing puma-dev folder"
  rm -r $HOME/.puma-dev
  echo "Copying puma_dev"
  cp -a $SHERMAN/puma_dev $HOME/.puma-dev

  sherman_heading "Reloading tmux config"
  echo "Removing tmux configuration"
  rm $HOME/.tmux.conf
  echo "Copying tmux configuration"
  cp $SHERMAN/tmux/.tmux.conf $HOME/.tmux.conf

  # This ought to be the last thing to happen
  sherman_heading "Reloading .zshrc"
  echo "Copying .zshrc"
  cp $SHERMAN/zshrc.sh ~/.zshrc
  echo "Sourcing .zshrc"
  source ~/.zshrc

  sherman_heading "Reload complete!"
}
