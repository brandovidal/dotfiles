ZSH_THEME=robbyrussell

# Oh My Zsh path
export ZSH=$HOME/.oh-my-zsh

# Plugins
plugins=(
git
yarn
)

# Oh My Zsh load
source $ZSH/oh-my-zsh.sh

# Git aliases
alias gmasu="gcm && g fetch upstream && g reset --hard upstream/master && ggpush -f"
alias gmaso="gcm && g fetch origin && g reset --hard origin/master"
alias gaem="g commit --allow-empty -m"
alias grmum='git rebase -i $(git merge-base HEAD upstream/master)'
alias grmom='git rebase -i $(git merge-base HEAD origin/master)'

# nvm aliases
alias nvmu="nvm use"
alias nvmx="nvm use 10"
alias nvmy="nvm use 12"
alias nvmz="nvm use 15"

# npm and yarn aliases
alias npmd="npm run dev"
alias npmb="npm run build"
alias npms="npm start"
alias yarnd="yarn run dev"
alias yarns="yarn start"

# node_modules aliases
alias rmnpmi="rm -rf node_modules && npm cache clean --force && npm i"
alias rmyarn="rm -rf node_modules && yarn cache clean && yarn --force"
alias rmpack="rm -rf node_modules && rm -rf packages/**/node_modules && yarn --force"
alias cryarn="yarn clean-repo"

# pyenv aliases
alias pyg2="pyenv global 2.7.17"
alias pyg3="pyenv global 3.6.7"

# utils aliases
alias rmorig="rm -rf **/*.orig"
alias rm="trash"
alias cl="clear"
alias cafe="cat /dev/urandom | hexdump | grep \"ca fe\""
alias sshadd="ssh-add -K ~/.ssh/id_rsa"
alias rundb="run-rs --mongod "$(which mongod)" --keep --dbpath ~/.data/mongodb"
alias nocors="open --new -a 'Google Chrome' --args --disable-web-security --allow-running-insecure-content --user-data-dir=/tmp/$USER --test-type"
#alias simu="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

# nvm path
export NVM_DIR="$HOME/.nvm"

# nvm load without use (Improves terminal load speed)
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use

# Syntax Highlighting
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# General path
export PATH="$PATH:`yarn global bin`"
export PATH="$PATH:$HOME/.pyenv/shims"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/miniconda3/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/mongodb/bin"
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin"
export PATH="$PATH:/usr/local/opt/ruby/bin"
export EDITOR=micro
export EDITOR=micro
