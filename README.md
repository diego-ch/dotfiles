# dotfiles
This repository contains my config files for git, terminal, IDEs and etc...

## 1. Requirements

### 1.1 Homebrew
Ensure [Homebrew](https://brew.sh/) is installed on the machine.
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 1.2 CLI Tools
Use homebrew to install the cli tools.
```
brew install \
  mise \
  commitzen \
  lsd \
  gh \
  git \
  iperf3 \
  jq \
  lazygit \
  neovim \
  scrcpy \
  stow \
  tmux \
  yt-dlp \
  wget
```

### 1.3 Apps
Use homebrew to install apps.
```
brew install --cask \
  android-studio \
  bitwarden \
  discord \
  docker \
  figma \
  firefox \
  github \
  gitkraken \
  google-chrome \
  intellij-idea-ce \
  iina \
  kitty \
  notion \
  plex \
  rectangle \
  slack \
  spotify \
  stats \
  visual-studio-code
```

### 1.4 Fonts
Install nerd fonts.
```
brew install --cask \
  font-blex-mono-nerd-font \
  font-hack-nerd-font \
  font-jetbrains-mono-nerd-font \
  font-mononoki-nerd-font \
  font-space-mono-nerd-font \
  font-victor-mono-nerd-font \
  font-zed-mono-nerd-font
```

### 1.5 Extras
Install extra CLI tools.
```
brew tap heroku/brew
brew install heroku

brew tap teamookla/speedtest
brew install speedtest

brew install anomalyco/tap/opencode
```

## 2. Installation

Clone the git repository to your home directory:
```
git clone https://github.com/diego-ch/dotfiles.git ~/.dotfiles
```

then use STOW to create the symlinks:
```
cd ~/.dotfiles
stow --adopt .
```
