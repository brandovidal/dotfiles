#!/usr/bin/env zsh
# Uncomment for debuf with `zprof`
# zmodload zsh/zprof

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
setopt +o nomatch
# setopt autopushd

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Start Zim
source "$ZIM_HOME/init.zsh"

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source "$DOTFILES_PATH/shell/init.sh"

fpath=("$DOTFILES_PATH/shell/zsh/themes" "$DOTFILES_PATH/shell/zsh/completions" "$DOTLY_PATH/shell/zsh/themes" "$DOTLY_PATH/shell/zsh/completions" $fpath)

autoload -Uz promptinit && promptinit
prompt ${DOTLY_THEME:-codely}

source "$DOTLY_PATH/shell/zsh/bindings/dot.zsh"
source "$DOTLY_PATH/shell/zsh/bindings/reverse_search.zsh"
source "$DOTFILES_PATH/shell/zsh/key-bindings.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias
alias gaa='git add .'
alias gb='git branch'
alias gcmsg='git commit -m'
alias gf='git fetch'
alias gfa='git fetch --all --prune --jobs=10'
alias gl='git pull'
alias glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'\'
alias glog='git log --oneline --decorate --graph'
alias gm='git merge'
alias gp='git push'
alias gr='git remote'
alias grv='git remote -v'
alias gsw='git switch'
alias gss='git status -s'

# npm and yarn aliases
alias npms="npm start"
alias npmd="npm run dev"
alias npmb="npm run build"
alias npmc="npm run clean"
alias npml="npm run lint"
alias npmlf="npm run lint-fix"
alias npmk="npm run kill"

alias yarns="yarn start"
alias yarnd="yarn run dev"
alias yarnb="yarn run build"
alias yarnl="yarn run lint"
alias yarnlf="yarn run lint-fix"
alias yarnc="yarn run clean"
alias yarnk="yarn run kill"

alias pnpmd="pnpm run dev"
alias pnpmb="pnpm run build"
alias pnpmc="pnpm run clean"
alias pnpms="pnpm start"
alias pnpml="pnpm run lint"
alias pnpmlf="pnpm run lint-fix"
alias pnpmk="pnpm run kill"