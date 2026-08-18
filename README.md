# dotfiles

Config files for git, shell, terminals and editors, managed with [GNU Stow](https://www.gnu.org/software/stow/).
Each top-level directory is a stow package that mirrors `$HOME`.

## 1. Requirements

### 1.1 Homebrew (macOS)
Ensure [Homebrew](https://brew.sh/) is installed on the machine.
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 1.2 CLI Tools
Use homebrew to install the cli tools.
```
brew install \
  btop \
  mise \
  commitzen \
  eza \
  gh \
  git \
  iperf3 \
  jq \
  lazydocker \
  lazygit \
  neovim \
  ripgrep \
  scrcpy \
  stow \
  tmux \
  yt-dlp \
  wget \
  zsh-autosuggestions
```

### 1.3 Apps
Use homebrew to install apps.
```
brew install --cask \
  android-studio \
  bitwarden \
  cursor \
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

Clone the repository (any path works, `.stowrc` targets `$HOME`):
```
git clone https://github.com/diego-ch/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

then stow everything:
```
stow */
```

or only what the machine needs (e.g. a headless Linux box):
```
stow git zsh tmux starship
```

## 3. Work git identity

Routing and identity are machine-local and never committed. `~/.gitconfig`
includes `~/.config/git/local`, which routes work repos (matched by remote
or directory) to the identity in `~/.config/git/work.local`:
```
mkdir -p ~/.config/git
cp git/local.example ~/.config/git/local
cp git/work.local.example ~/.config/git/work.local
$EDITOR ~/.config/git/local ~/.config/git/work.local
```
