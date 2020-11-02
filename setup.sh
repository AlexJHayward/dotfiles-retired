#!/bin/bash

# GUI apps ================
echo "First it's time for GUI apps\n"
open https://www.barebones.com/products/bbedit/ &&
open https://www.alfredapp.com &&
open https://iterm2.com &&
open https://www.macbartender.com &&
open https://1password.com
echo "Hit any key to continue"
read -n 1
echo "now that iterm is installed, go to preferences > General > Preferences > Load Preferences from a custom URL or Folder, select the iterm_profile folder in the dotfiles directory."
echo "press any key to continue" && read -n 1

# BREW ===========
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install macvim
brew install thefuck
brew install jq
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew install ammonite-repl

# ALFRED ==========
echo "Installing alfred workflows"
git submodule init && git submodule update
cd ~/.dotfiles/alfred-workflows/
chmod +x ./quick_install.sh
./quick_install.sh
cd -

# NVM =================
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
nvm install node --latest-npm

# OH-MY-ZSH ============
# 1. install 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 2. move and symlink omz files
mv ~/.oh-my-zsh ~/.dotfiles/oh-my-zsh
ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
# 3. install custom theme
npm install --global pure-prompt
echo "custom iterm colours will now be installed"
open ~/.dotfiles/themes/seoul256.itermcolors
echo "press any key to continue" && read -n 1

# MACVIM ===========
ln -s ~/.dotfiles/gvimrc ~/.gvimrc 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

# Git ==========
git config --global core.editor "bbedit -w"

# Finish ========
echo "Restart terminal to apply changes"