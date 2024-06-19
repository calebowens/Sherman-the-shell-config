# Sherman the shell config
## How to bootstrap sherman

1. Clone sherman into $HOME/sherman-the-shell-config
2. Copy `zshrc.sh` into `$HOME/.zshrc`
3. Source zshrc `source $HOME/.zshrc`
4. Reload sherman `sherman_reload`

## Loading configuration changes

Run `sherman_reload`.

If you've made changes to any shell files, it is prudent to run `sherman_reload` twice to ensure that its boostrapped
correctly.
