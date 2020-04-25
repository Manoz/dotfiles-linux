# Workaround for: https://github.com/sorin-ionescu/prezto/issues/1744
export HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Path
export PATH="/usr/local/opt/curl/bin:$PATH"

# Language
export LANG=en_US.UTF-8

# Get aliases
if [ -f ~/.zsh_aliases ]; then
. ~/.zsh_aliases
fi

#
# Exports
#

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Composer
export PATH=~/.config/composer/vendor/bin:$PATH
