# Oh My Zsh path
export ZSH=$HOME/.oh-my-zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=(
"robbyrussell" "agnoster" "alanpeabody" "af-magic"
"eastwood" "half-life" "juanghurtado" "wedisagree"
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
yarn
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# Path oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/



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
alias npms="npm start"
alias npmd="npm run dev"
alias npmb="npm run build"
alias npmc="npm run clean"
alias npml="npm run lint"
alias npmlf="npm run lint-fix"
alias npmk="npm run kill"
alias yarns="yarn start"
alias yarnd="yarn dev"
alias yarnb="yarn build"
alias yarnl="yarn lint"
alias yarnlf="yarn lint-fix"
alias yarnc="yarn clean"
alias yarnk="yarn kill"

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


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


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
