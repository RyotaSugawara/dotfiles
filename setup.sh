# setup zsh
ln -sf $HOME/dotfiles/zsh/zshrc $HOME/.zshrc

# setup nvim
mkdir -p $HOME/.config
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim
ln -sf $HOME/dotfiles/direnv $HOME/.config/direnv

# setup git
ln -sf $HOME/dotfiles/git/gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor nvim
