### Install brew packages ###

brew tap thoughtbot/formulae

brew install rcm
brew install zsh zsh-completions
brew install tig
brew install nvim
brew install autojump
brew install git
brew install tmux

### Install applications with brew cask ###

brew cask install daisydisk
brew cask install bartender
brew cask install iterm2
brew cask install dropbox
brew cask install google-backup-and-sync 
brew cask install hammerspoon
brew cask install docker
brew cask install spotify
brew cask install google-chrome
brew cask install firefox
brew cask install transmit
brew cask install slack
brew cask install vlc
brew cask install postman
brew cask install postico
brew cask install base
brew cask install sequel-pro
brew cask install discord
brew cask install visual-studio-code
brew cask install transmission

### macOS specific settings ###

# Finder: show all filename extensions
# http://www.defaults-write.com/display-the-file-extensions-in-finder/
# Revert to the default
# defaults write NSGlobalDomain AppleShowAllExtensions -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Disable the extension change warning in OS X Finder
# http://www.defaults-write.com/disable-the-extension-change-warning-in-os-x-finder/
# Revert to the default
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
# http://www.defaults-write.com/change-default-view-style-in-os-x-finder/
# Revert to the default
# defaults write com.apple.Finder FXPreferredViewStyle icnv
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Disable the warning before emptying the Trash
# http://www.defaults-write.com/disable-the-warning-before-emptying-the-trash/
# Revert to the default
# defaults write com.apple.finder WarnOnEmptyTrash -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Remove the Dock Auto-Hide & Show Delay
# http://www.defaults-write.com/remove-the-dock-auto-hide-show-delay/
# Revert to the default
# defaults delete com.apple.Dock autohide-delay
defaults write com.apple.dock autohide-delay -float 0

# Reduce the animation when hiding/showing the Dock to 0.5s
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done
