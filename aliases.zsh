#!/bin/bash
# https://blog.g3rt.nl/upgrade-your-ssh-keys.html
# utils
alias tfp="terraform plan"
alias tfi="terraform init"
alias tfa="terraform apply"
alias tfd="terraform destroy"
alias tfs="terraform show"
alias tfg="terraform get"
alias tfo="terraform output"
killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill -9 ;}
alias src="semantic-release-cli"
alias fix='rm -rf ~/.zcomp* && exec zsh'

function gj() {
  cd $(git rev-parse --show-toplevel)
}

alias lsh="ls -ld .?* "
alias gl="git lg -10"
alias gla="git lg"

function cif() {
  cat $1 | pbcopy
}
alias vru='cd /usr/local/Cellar/neovim/0.2.0_1/share/nvim/runtime'
function ttfb() {
  SITE="${2-https://j.marketing-cloud.io }"
  echo "${SITE}"
  seq $1 | xargs -Iz _ttfb "$SITE"
}
alias cll='fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy'
function listkeys() {  
  for keyfile in ~/.ssh/id_*; do ssh-keygen -l -f "${keyfile}"; done | uniq
}

function genkey() {
    ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/$1 -C "$2" -N ''
}
function rename() {
  EXT=$1
  for file in *.$EXT
  do
      x=$(stat -f '%SB' -t '%Y-%m-%d-%H%M' "$file")
      mv "$file" "$x.$EXT"
    done
}
alias ubuntu="ssh -i /Users/markovujanic/Desktop/TrackerTest.pem ubuntu@52.59.227.141"
alias cleardns="sudo killall -HUP mDNSResponder"
alias vim='nvim' # fixing muscle memory on every server I enter
bindkey \^U backward-kill-line
# customizing less go give it more color also lessfilter in dotfiles must be chmod u+x

# aws
alias isolated='ssh ec2-user@ec2-18-194-44-85.eu-central-1.compute.amazonaws.com'
# alias alfa='ssh ec2-18-194-137-8.eu-central-1.compute.amazonaws.com'
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
# nginx magic

alias nginx.start='sudo nginx -c /etc/nginx/nginx.conf'
alias nginx.stop='sudo nginx -s stop'
alias nginx.reload='sudo nginx -s reload'
alias nginx.config='sudo nginx -t'
alias nginx.restart='nginx.config && nginx.stop && nginx.start'
alias nginx.errors='tail -250f /var/logs/nginx.error.log'

## servers and dns and network
alias netstat.tulpn='netstat -an | grep -i listen'
# alias lsof.who="sudo lsof -i -n -P | grep -i listen | awk '{ printf \"%-30s %-10s %-20s %-5s %-10s\n\", $1,$2,$3,$8,$9}'"
alias lsof.who="sudo lsof -i -n -P | grep -i listen"


# Wellcome Vagrant
alias vs="vagrant status"
alias v.restart="vagrant reload"
alias v.restart="vagrant reload"
alias vgs="vagrant global-status"
alias vd="vagrant destroy"
alias vup="vagrant up"
alias vssh="vagrant ssh"

# Example aliases - Moji Aliasi
alias zshedit="vim ~/.zshrc"
alias aliasedit="vim ~/.alias.zsh"
alias r!="source ~/.zshrc;echo done"


alias ls="ls -GCF"
function _f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
alias npms="npm list -g --depth=0"
alias npml="npm list --depth=0"
alias ns="npm run start"
alias build="npm run build"

function npmls() {
  npm list --depth ${1-0} 
}

alias sl="git rev-parse --show-toplevel |xargs -I {} jq ".scripts" {}/package.json"
alias ep="git rev-parse --show-toplevel |xargs -I {} nvim {}/package.json"

# directorys 
function t() {
  tree -L ${1-2} -I 'node_modules' --dirsfirst -a
}

alias _tree="tree -I 'node_modules' --dirsfirst"

function randomimage() {
  wget -O ${1-randomimage.jpg} http://lorempixel.com/400/200/
}

#node and tooling
alias babelrc="echo '{ \"presets\": [\"react\",\"es2015\"] }' > .babelrc"

function genbabel() {
  npm i babel-core babel-cli babel-loader babel-preset-es2015 -D;
  echo '{ "presets": ["es2015"], {modules: false} }' > .babelrc
} 

function geneslint() {
  npm i eslint babel-eslint;
  cp ~/dotfiles/eslint-template.js .eslintrc.js
}

alias killdir="mkdir ../.tmp_to_remove && mv -- * ../.tmp_to_remove && rm -rf ../.tmp_to_remove &"

lsimg() {
  find . \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) -print0 | \
    while read -d $'\0' -r image; do
      read w h < <(sips -g pixelWidth -g pixelHeight "$image" | \
        awk '/Width:/{w=$2} /Height:/{h=$2} END{print w " " h}')
      echo $image $w x $h
    done
  }

  # git
  function ignore() { echo $1 >> .gitignore } 
  alias rmf="rm -rf"
  alias rm=trash

  function getmyip() {
    for i in `seq 1 10`;
    do
      ipconfig getifaddr en$i
    done
  }

  # Copy current pwd to clipbloard, will not work on linux
  alias cpwd="pwd | tr -d '\n' | pbcopy"

  # Plugin specific

  alias z="fasd_cd -d"
  alias f="fasd -f"
  alias v='f -e nvim'
  alias d='fasd -d'

  fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z


# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
# updating tldr
alias 'tldru'='~/.tldrc/tldr-master/update.sh'
# git 
alias gc="git commit -am"
# create new dir and cd into it
function take () { mkdir -p "$@" && cd "$@"; }
alias nrb="node run build"

export VISUAL=nvim
export EDITOR="$VISUAL"

alias dckr="/Users/markovujanic/dotfiles/docker/develop"
alias dh="/Users/markovujanic/dotfiles/docker/helpers"
# "git pull "https://admin:12345@github.com/Jet/something.git" master"

# missing piece for tldr
add() {
  local files
  IFS=$'\n' files=($(find ~/.tldrc/tldr-master/pages -type f \( ! -name "\.DS_Store" \)| fzf-tmux --preview 'head -30 {}' --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}


# find code definition with this
alias ick='ack -i --pager="less -R -S -X"'
#export FZF_DEFAULT_COMMAND='ag -g ""'

#export FZF_ALT_C_COMMAND="rg -t d . $HOME"
# export FZF_ALT_C_COMMAND="cd ~/; bfs -type d -nohidden | sed s/^\./~/"  
export FZF_ALT_C_COMMAND="bfs -type d -nohidden"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,_node_modules,.DS_Store}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# export FZF_ALT_C_COMMAND="cd ~/; bfs -type d -nohidden | sed s/^\./~/" 
