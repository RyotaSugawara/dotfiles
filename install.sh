# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# homebrew requirements
brew install \
  neovim \
  python \
  go \
  direnv \
  tmux \
  deno

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# cargo install
cargo install \
  ripgrep

# go install
go install github.com/x-motemen/ghq@latest
go install github.com/peco/peco/cmd/peco@latest

# pip install
pip3 install --user pynvim
pip3 install --user --upgrade pynvim
