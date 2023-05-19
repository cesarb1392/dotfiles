PATH="$HOME/bin:/usr/local/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="/opt/homebrew/sbin:$PATH"
PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH

export STARSHIP_CONFIG=~/.config/starship.toml        

export ZSH="$HOME/.oh-my-zsh"
export EDITOR='micro'
export TF_LOG='error'
export K9S_EDITOR="micro"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"

export NVM_DIR="$HOME/.nvm"

# export KUBECONFIG="$HOME/.kube/kubeconfig:$HOME/.kube/kubeconfig2"
export KUBECONFIG="$HOME/.kube/config:$(find . -type f | tr '\n' ':')"

export AWS_VAULT_BACKEND="file"
export AWS_VAULT_FILE_PASSPHRASE=""
export AWS_PROFILE="vanmoof"
export AWS_DEFAULT_PROFILE="vanmoof"
export AWS_VAULT_PROMPT="osascript"
export AWS_VAULT_KEYCHAIN_NAME="login"
export AWS_VAULT_BACKEND="keychain"
export AWS_SESSION_TOKEN_TTL="8h"
export AWS_CHAINED_SESSION_TOKEN_TTL="1h"
export AWS_ASSUME_ROLE_TTL="1h"
export AWS_FEDERATION_TOKEN_TTL="8h"
export AWS_MIN_TTL="8h"
