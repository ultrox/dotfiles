
Edit Chrome Directly


" Change stupid cmd+shift+i to lounch mail client 
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Email Page Location' '\0' && defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'Email Page Location' '\0' && killall cfprefsd killall Finder

defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'New Tab' '\0' && defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'New Tab' '\0' && killall cfprefsd killall Finder
"Remove save page as..
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Save Page As...' '\0' && defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'Save Page As...' '\0' && killall cfprefsd killall Finder

"Make alt behave like meta or +Esc in os preferences
"iTerm2
: Go to Preferences->Profiles tab. Select your profile on the left, and then open the Keyboard tab. At the bottom is a set of buttons that lets you select the behavior of the Option key. For most users, Esc+ will be the best choice.


" Fix problem with tmux and Vim pane switching
" Problem is caused by iTerm

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti && tic $TERM.ti
