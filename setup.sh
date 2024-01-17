# setup zsh
ln -sf $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/zsh/zimrc $HOME/.zimrc
ln -sf $HOME/dotfiles/zsh/zshenv $HOME/.zshenv

# setup nvim
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/direnv
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim
ln -sf $HOME/dotfiles/direnv $HOME/.config/direnv
ln -sf $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# setup git
ln -sf $HOME/dotfiles/git/gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor nvim
