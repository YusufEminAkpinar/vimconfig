#!/bin/sh

PWD=$(pwd)
set -e

mkdir -p ~/.vim/undo
mkdir -p ~/.vim
cp ./.vimrc ~/.vimrc || true
cp ./lspconf.vim ~/.vim/lspconf.vim || true
cp ./tex-settings.vim ~/.vim/tex-settings.vim || true


PLUG_PATH=~/.vim/autoload/plug.vim
if test -e $PLUG_PATH ; then
	echo "VimPlug already exists."
else
	echo "Installing vim-plug"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


COM_PATH=~/.vim/pack/tpope/start
if test -e "$COM_PATH" ; then
	echo "Commentary Plugin already installed."
else
	echo "Installing commentary plugin"
	mkdir -p ~/.vim/pack/tpope/start
	git clone https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start/commentary
fi


