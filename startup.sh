#!/bin/bash

set -eu

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/dot-vim ~/.vim
git submodule update --init --recursive
