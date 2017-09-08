alias ubuntu="ssh -i /Users/markovujanic/Desktop/TrackerTest.pem ubuntu@52.59.227.141"
alias cleardns="sudo killall -HUP mDNSResponder"
alias vim='nvim' # fixing muscle memory on every server I enter
bindkey \^U backward-kill-line
# customizing less go give it more color also lessfilter in dotfiles must be chmod u+x
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# Example aliases - Moji Aliasi
alias zshedit="vim ~/.zshrc"
alias aliasedit="vim ~/.alias.zsh"
alias r!="source ~/.zshrc;echo done"
# clone repository with default webpack settings to start developing ec6 
function gojs() {git clone https://github.com/ultrox/w $1 && cd $1 && npm install}

# find code definition with this
alias ick='ack -i --pager="less -R -S -X"'

alias now="ssh marko@169.254.100.2"
alias lubuntu="ssh marko@10.0.0.26"
export FZF_DEFAULT_COMMAND='ag -g ""'
alias ls="ls -GCF"
function _f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
alias npms="npm list -g --depth=0"
alias npml="npm list --depth=0"
alias ns="npm run start"
alias build="npm run build"
function nls() {npm list --depth ${1-0} }

# directorys 
function t() {tree -L ${1-2} -I 'node_modules' --dirsfirst}
alias _tree="tree -I 'node_modules' --dirsfirst"

function randomimage() {wget -O ${1-randomimage.jpg} http://lorempixel.com/400/200/}

#node and tooling
alias babelrc="echo '{ \"presets\": [\"react\",\"es2015\"] }' > .babelrc"

function genbabel() {
 npm i babel-core babel-loader babel-preset-es2015 babel-preset-react -D;
echo '{ "presets": ["react","es2015"] }' > .babelrc
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
 alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias undo-commit="reset --soft HEAD~1"
alias gs="git status"
function ignore() { echo $1 >> .gitignore } 
alias rmf="rm -rf"
alias rm=trash
alias myip="ipconfig getifaddr en5"


# Dev specific
alias cpwd="pwd | tr -d '\n' | pbcopy"

# Plugin specific
#

alias z="fasd_cd -d"
alias f="fasd -f"
alias v='f -e nvim'
alias d='fasd -d'
alias di='fasd -d'
fed() {cp $1 '' `fasd -d $2`; }
cpcp() {cp $1 `fasd -d $2`; }
mvmv() {mv $1 `fasd -d $2`; }

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


# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
	
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

# Docker
function dockerstop() { docker stop $(docker ps -q --filter ancestor=$1)}

