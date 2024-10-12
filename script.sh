#!/bin/sh

PWD=$(pwd)
set -xe

mkdir -p ~/.vim/undo
mkdir -p ~/.vim
cp ./.vimrc ~/.vimrc
cp ./lspconf.vim ~/.vim/lspconf.vim

echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "Installing commentary plugin"
mkdir -p ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start/commentary


