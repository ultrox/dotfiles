Edit Chrome Directly


" Change stupid cmd+shift+i to lounch mail client 
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Email Page Location' '\0'
defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'Email Page Location' '\0'
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add 'Email Link to This Page' '\0' 'Email This Page' '\0'

defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Print...' '\0'
defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'Print...' '\0'

killall cfprefsd
killall Finder
