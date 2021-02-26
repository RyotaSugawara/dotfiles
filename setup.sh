# setup zsh
ln -sf $HOME/dotfiles/zsh/zshrc $HOME/.zshrc

# setup nvim
mkdir -p $HOME/.config/nvim
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim

# setup git
ln -sf $HOME/dotfiles/git/gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
