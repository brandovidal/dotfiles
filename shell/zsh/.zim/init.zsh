zimfw() { source /home/brando/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/brando/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
fpath=(/home/brando/.dotfiles/shell/zsh/.zim/modules/git-info/functions /home/brando/.dotfiles/shell/zsh/.zim/modules/prompt-pwd/functions ${fpath})
autoload -Uz -- coalesce git-action git-info prompt-pwd
source /home/brando/.dotfiles/shell/zsh/.zim/modules/environment/init.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/input/init.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/completion/init.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/exa/init.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/git-prune/git-prune.plugin.zsh
source /home/brando/.dotfiles/shell/zsh/.zim/modules/zsh-sudo/init.zsh
