# BREW ===========
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install macvim
brew install ehefuck
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# OH-MY-ZSH ============
# 1. install 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 2. move and symlink omz files
mv ~/.oh-my-zsh ~/.dotfiles/oh-my-zsh
ln -s ~/.dotfiles/oh-my-zsh ~/.oh-my-zsh
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
# 3. install custom theme
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
open ~/.dotfiles/themes/seoul256.itermcolors

# MACVIM ===========
ln -s ~/.dotfiles/gvimrc ~/.gvimrc 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
