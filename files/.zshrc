ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git iterm2 kubectl zsh-syntax-highlighting zsh-autosuggestions zsh-completions git-open zsh-history-substring-search zoxide history aws)
autoload -Uz compinit
compinit

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.zshenv

fpath=(/usr/local/share/zsh/site-functions $fpath)

complete -o nospace -C /usr/local/bin/terraform terraform

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
