# Tldr must be installed with brew then cach dir is .tldrc/tldr-master
target="$HOME/.tldrc"

if [ -e $target ]; then
		echo "~${target#$HOME} removing folder"
		rm -rf $HOME/.tldrc/
		mkdir -p $HOME/.tldrc
else
		echo "Creating folder for .tldrc"
		mkdir -p $HOME/.tldrc
fi

git clone https://github.com/ultrox/tldr1 $HOME/.tldrc/tldr-master


