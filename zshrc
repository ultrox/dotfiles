#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh


zplug "felixr/docker-zsh-completion"
# awesome completion of aws
# source /usr/local/bin/aws_zsh_completer.sh

source $(which aws_completer | sed 's/aws_completer/aws_zsh_completer/').sh
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#my aliases
source "${ZDOTDIR:-$HOME}/dotfiles/aliases.zsh"

eval "$(fasd --init auto)"
# http://blog.joncairns.com/2013/12/understanding-ssh-agent-and-ssh-add/
source /Users/markovujanic/dotfiles/ssh-find-agent.sh
# stop asking me...
set_ssh_agent_socket
# first added by brew second added by python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

zstyle ":completion:*:descriptions" format "%B%d%b"
zstyle ':completion:*' menu select=2

# folder of all of mine personal autocomplete functions

fpath=($HOME/.zsh-completions $fpath)
# compsys initialization
autoload -U compinit
compinit

# Add mine script
#
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

export PATH=$HOME/bin:$GOBIN:$PATH
# enable autocomplete function

# Cargo downloads your Rust project’s dependencies and compiles your project.
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Ruby version menager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

