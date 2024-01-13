# This is a utility to reload my shell configuration
# Some tools like neovim may need closing and opening for configuration to take effect
function sherman_reload() {
  sherman_heading "Reloading .zshrc"
  echo "Copying .zshrc"
  cp $SHERMAN/zshrc.sh ~/.zshrc
  echo "Sourcing .zshrc"
  source ~/.zshrc

  sherman_heading "Reload nvim config"
  echo "Removing nvim configuration files"
  rm -r $HOME/.config/nvim
  echo "Copying nvim"
  cp -r $SHERMAN/neovim $HOME/.config/nvim
}