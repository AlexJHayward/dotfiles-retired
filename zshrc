eval $(thefuck --alias)

#import other aliases
source ~/.dotfiles/aliases

#initialise pyenv
eval "$(pyenv init -)"

#open in 
alias subl='open -a sublime\ text'
alias ij='open -na "IntelliJ IDEA.app" --args "$@"'

eval $(thefuck --alias)
source ~/.dotfiles/work/work-aliases

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/ahayward/.dotfiles/.oh-my-zsh"
ZSH_CUSTOM=$HOME/.dotfiles/zsh_custom
ZSH_THEME="typewritten"

HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
ZSH_THEME="" # see pure prompt below
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins low down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Activate pure prompt theme
autoload -U promptinit; promptinit
prompt pure

# NVM 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ahayward/.sdkman"
[[ -s "/Users/ahayward/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ahayward/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
