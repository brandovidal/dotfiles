# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias ~="cd ~"
alias findd="exa ~/ --icons | grep $1"
alias dotfiles='cd $DOTFILES_PATH'

# Undefined Bootcamp
alias cafe="cat /dev/urandom | hexdump | grep \"ca fe\""

# Git
alias gaa='git add .'
alias gb='git branch'
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gcmsg='git commit -m'
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gdf='git diff --name-only HEAD^ HEAD'
alias gf='git fetch'
alias gfa='git fetch --all --prune --jobs=10'
alias gl='git pull'
alias glra="git pull --rebase --autostash"
alias glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'\'
alias glog='$DOTLY_PATH/bin/dot git pretty-log'
alias gm='git merge'
alias gp='git push'
alias gpf="git push --force"
alias gr='git remote'
alias grv='git remote -v'
alias gsw='git switch'
alias gs="git status -sb"
alias gss='git status -s'

# NPM Packages
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

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'
alias cl="clear"

