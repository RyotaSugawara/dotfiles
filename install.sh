# $HOME/dotfiles

BASEDIR="$HOME/dotfiles"
ZSH_FILES="${BASEDIR}/zsh"
VIM_FILES="${BASEDIR}/zsh"

echo 'symbolic linking...'

echo 'symbolic linking...(zsh)'
# zsh
# ln -s "${BASEDIR}/zprezto" ${HOME}/.zprezto
# ln -s ${ZSH_FILES}/rumcoms/zshrc ${HOME}/.zshrc

echo 'symbolic linking...(vim)'
# vim
ln -s "${BASEDIR}/vim" ${HOME}/.vim
ln -s ${VIM_FILES}/vimrc ${HOME}/.vimrc
ln -s ${VIM_FILES}/gvimrc ${HOME}/.gvimrc

echo 'symbolic linking...Done!'

