# $HOME/dotfiles

BASEDIR="$HOME/dotfiles"
ZSH_FILES="${BASEDIR}/zsh"
VIM_FILES="${BASEDIR}/vim"

echo 'symbolic linking...'

echo 'symbolic linking...(zsh)'
# zsh
ln -sf ${ZSH_FILES}/zshrc ${HOME}/.zshrc

echo 'symbolic linking...(vim)'
# vim
ln -sf "${BASEDIR}/vim/" ${HOME}/.vim
ln -sf ${VIM_FILES}/.vimrc ${HOME}/.vimrc
ln -sf ${VIM_FILES}/gvimrc ${HOME}/.gvimrc
ln -sf ${BASEDIR}/tern-config ${HOME}/.tern-config

if [ ! -e "${VIM_FILES}/autoload/plug.vim" ]; then
	echo "install plug.vim start"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	source $HOME/.vimrc
	echo "install plug.vim end"
fi

echo 'symbolic linking...Done!'

