# Path to your oh-my-zsh installation.
export ZSH=/Users/fknussel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ll='ls -lhFa'
alias ws='cd ~/workspace'
alias sublime='open -a "Sublime Text"'
alias vscode='open -a "Visual Studio Code"'
alias nuclide='open -a Atom'
alias fork='open -a Fork'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Salt Developer Scripts
export PATH=$PATH:/Users/fknussel/salt-developer/scripts

# Switch between projects
_goToSalt() {
    API="$1"

    if [ -z "${API}" ]; then
        cd ~/salt-developer/
    elif [ "${API}" = "questions" ]; then
        cd ~/salt-developer/code/api/questionsV2/
    elif [ $1 = "assess" ]; then
        cd ~/salt-developer/code/api/assess/
    elif [ $1 = "annotations" ]; then
        cd ~/salt-developer/code/api/annotations/
    elif [ $1 = "items" ]; then
        cd ~/salt-developer/code/api/items/
    elif [ $1 = "qe" ]; then
        cd ~/salt-developer/code/api/questioneditor/
    elif [ $1 = "schemas" ]; then
        cd ~/salt-developer/code/api/schemas/
    elif [ $1 = "docs" ]; then
        cd ~/salt-developer/code/site/docs/
    elif [ $1 = "demos" ]; then
        cd ~/salt-developer/code/site/demos/
    elif [ $1 = "scoring" ]; then
        cd ~/salt-developer/code/api/questionsV2/www/latest/vendor/scoring/
    else
        cd ~/salt-developer/
    fi
}

alias salt='_goToSalt'
