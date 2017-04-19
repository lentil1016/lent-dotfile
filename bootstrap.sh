#!/bin/bash

pushd ~

mkdir .dotfile
pushd .dotfile

rm -f *

wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.zshrc
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.gdbinit
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.bashrc
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.vimrc.local

popd

rm -f ~/.zshrc
rm -f ~/.vimrc.local
rm -f ~/.bashrc
rm -f ~/.gdbinit

ln -sf ~/.dotfile/.zshrc ~/.zshrc
ln -sf ~/.dotfile/.vimrc.local ~/.vimrc.local
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.gdbinit ~/.gdbinit

popd
