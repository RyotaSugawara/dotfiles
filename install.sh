# $HOME/dotfiles

BASEDIR="$HOME/dotfiles"
ZSH_FILES="${BASEDIR}/zsh"
VIM_FILES="${BASEDIR}/vim"

echo 'symbolic linking...'

echo 'symbolic linking...(zsh)'
# zsh
ln -s ${ZSH_FILES}/rumcoms/zshrc ${HOME}/.zshrc

echo 'symbolic linking...(vim)'
# vim
ln -s "${BASEDIR}/vim" ${HOME}/.vim
ln -s ${VIM_FILES}/vimrc ${HOME}/.vimrc
ln -s ${VIM_FILES}/gvimrc ${HOME}/.gvimrc

echo 'symbolic linking...Done!'

