#!/bin/bash

# BREW ===========
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install macvim
brew install thefuck
brew install jq
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew install ammonite-repl
brew install starship
brew install antigen

# NVM =================
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
nvm install node --latest-npm

# PATHOGEN ===============
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# NVM ============
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node

# SDKMAN ==============
curl -s "https://get.sdkman.io" | bash
sdk install scala
sdk install sbt

# Command Line Tools
xcode-select --install
echo "Hit any key when it's done"
read -n 1

# Finish ========
echo "Restart terminal to apply changes"
