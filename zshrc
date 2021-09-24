# Homebrew
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/alexhayward/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# the fuck
eval $(thefuck --alias)

# functions
sizeof() {
	stat -f%z $1 | awk '{print $1/1024/1024/1024 " GB "}'	
}

# aliases
alias gs='clear && git status'
alias l='ls -lahG'

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH 
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
setopt autocd

# antigen
source $HOME/antigen.zsh

antigen bundles <<EOBUNDLES
    # Syntax highlighting bundle.
    zsh-users/zsh-syntax-highlighting

    # Fish-like auto suggestions
    zsh-users/zsh-autosuggestions

    # Extra zsh completions
    zsh-users/zsh-completions
EOBUNDLES

antigen apply

# starship
eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/alexhayward/.sdkman"
[[ -s "/Users/alexhayward/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/alexhayward/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
