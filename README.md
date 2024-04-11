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
  commitzen \
  exa \
  git \
  gh \
  iperf3 \
  jq \
  starship \
  stow \
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
  iterm2 \
  notion \
  plex \
  protonvpn \
  rectangle \
  slack \
  spotify \
  stats \
  visual-studio-code \
  vlc
```

### 1.4 Fonts
Install nerd fonts.
```
brew tap homebrew/cask-fonts
brew install --cask \
  font-comic-mono \
  font-hack-nerd-font \
  font-jetbrains-mono-nerd-font \
  font-space-mono-nerd-font \
  font-victor-mono-nerd-font
```

### 1.5 Extras
Install extra CLI tools.
```
brew tap heroku/brew
brew install heroku

brew tap teamookla/speedtest
brew install speedtest
```

## 2. Installation

Clone the git repository to your home directory:
```
git clone https://github.com/diego-ch/dotfiles.git ~/.dotfiles
```

then use STOW to create the symlinks:
```
cd ~/.dotfiles
stow .
```