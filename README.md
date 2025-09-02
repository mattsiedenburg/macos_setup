# macos_setup

Documenting my macOS setup

- [Homebrew](#Homebrew)
- [Tools](#Tools)
    - [Command Line](#Command_Line)
    - [Apps](#Apps)
- [zsh](#zsh)
    - [zsh Plugins](#zsh_Plugins)
    - [.zshrc](#.zshrc)
    - [Starship](#Starship)
    - [iTerm2](#iTerm2)

## Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Tools

### Command Line

```bash
brew install \
    vim \
    git \
    eza \
    bat \
    fzf \
    zoxide \
    htop
```

### Apps

```bash
brew install \
    iterm2 \
    visual-studio-code \
    firefox \
    docker-desktop
```

## zsh

### zsh Plugins

```bash
brew install \
    zsh-autosuggestions \
    zsh-completions \
    zsh-syntax-highlighting \
    zsh-history-substring-search \
    starship \
    font-fantasque-sans-mono-nerd-font # or other nerd font
```

### .zshrc

```bash
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
```

### Starship

```nash
starship preset gruvbox-rainbow -o ~/.config/starship.toml
```

### iterm2

```bash
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
cd iTerm2-Color-Schemes/
tools/import-scheme.sh 'schemes/GruvboxDark.itermcolors'
tools/import-scheme.sh 'schemes/GruvboxLight.itermcolors'
cd ..
rm -rf iTerm2-Color-Schemes/
```

```bash
cp com.googlecode.iterm2.plist ~/Library/Preferences/