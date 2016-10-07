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
ln -sf ${VIM_FILES}/vimrc ${HOME}/.vimrc
ln -sf ${VIM_FILES}/gvimrc ${HOME}/.gvimrc
ln -sf ${BASEDIR}/tern-config ${HOME}/.tern-config

if [ ! -e "${VIM_FILES}/autoload/plug.vim" ]; then
	echo "install plug.vim start"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	source $HOME/.vimrc
	echo "install plug.vim end"
fi

echo 'symbolic linking...Done!'


echo 'install npm modules...'
npm install \
  eslint \
  eslint-plugin-react \
  textlint \
  textlint-filter-rule-node-types \
  textlint-plugin-jser-markdown \
  textlint-rule-common-misspellings \
  textlint-rule-max-ten \
  textlint-rule-no-doubled-joshi \
  textlint-rule-no-dropping-the-ra \
  textlint-rule-no-mix-dearu-desumasu \
  textlint-rule-no-start-duplicated-conjunction \
  textlint-rule-sentence-length \
  textlint-rule-spellcheck-tech-word \
  typescript \
  -g
echo 'install npm modules...Done!'

