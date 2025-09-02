eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias cd='z'
alias cat='bat'
alias less='bat'
alias ls='eza'
alias ll='eza -ahl --group-directories-first --icons --color always'
alias tree='eza --tree'

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
