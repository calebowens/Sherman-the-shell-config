# Load or configure programmes
echo "Loading programme's specific configurations"

# Set shell
export EDITOR='nvim'

# Pull in rust (cargo) binaries
# source "$HOME/.cargo/env"

# GNU Bison - I don't remember why I need this
# export PATH="/opt/homebrew/opt/bison/bin:$PATH"

# A local bin file - I don't remember using this
# export PATH="/Users/calebowens/bin:$PATH"

# Load yarn packages in to PATH
# export PATH="/Users/calebowens/.yarn/bin:$PATH"

# Load sdkman shims
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Rbenv
eval "$(rbenv init - zsh)"

# SSHing
eval "$(ssh-agent -s)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Direnv
# eval "$(direnv hook zsh)"

# Added by Toolbox App
# export PATH="$PATH:/Users/calebowens/Library/Application Support/JetBrains/Toolbox/scripts"

# Added by OrbStack: command-line tools and integration
# source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Sherman ruby to path
# source_sherman_ruby

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
