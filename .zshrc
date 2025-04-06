# case-insensitive autocomplete
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced

# from pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PYTHON_CONFIGURE_OPTS="--enable-framework"
# eval "$(pyenv virtualenv-init -)"

export PATH="/opt/homebrew/opt/vim/bin/vim:$PATH"
export PATH="/opt/homebrew/opt/ctags-exuberant/bin:$PATH"


# custom prompt
# PS1="%n sucka"
# export PS1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
