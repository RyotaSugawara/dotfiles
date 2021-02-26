# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# homebrew requirements
brew install \
  neovim \
  python \
  go

# cargo install
cargo install \
  ripgrep

# go install
go get \
  github.com/x-motemen/ghq \
  github.com/peco/peco/cmd/peco

# pip install
pip3 install --user pynvim
pip3 install --user --upgrade pynvim
