# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install mise
curl https://mise.run | sh

# homebrew requirements
brew install \
  neovim \
  direnv

# cargo install
cargo install \
  ripgrep \
  fd-find

# go install
go install github.com/x-motemen/ghq@latest
go install github.com/peco/peco/cmd/peco@latest

# pip install
pip3 install --user pynvim
pip3 install --user --upgrade pynvim
