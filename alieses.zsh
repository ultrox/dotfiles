
# Example aliases - Moji Aliasi
alias zshedit="vim ~/.zshrc"
alias aliasedit="vim ~/.alias.zsh"
 alias r!="source ~/.zshrc"
 alias tree1="tree -L 1"
 alias slate="vim ~/.slate"
alias cc="pwd | tr -d '\n' | pbcopy"
alias now="ssh marko@10.0.0.27"
alias lubuntu="ssh marko@10.0.0.26"
export FZF_DEFAULT_COMMAND='ag -g ""'
alias ls="ls -GCF"
function fi() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
alias npms="npm list -g --depth=0"

alias killdir="mkdir ../.tmp_to_remove && mv -- * ../.tmp_to_remove && rm -rf ../.tmp_to_remove &"

transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

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
alias rmf="rm -rf"


# Dev specific
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
	
