#!/bin/bash

set -eu

URL=$1
NAME=$2

#git submodule add git@github.com:leshill/vim-json.git dot-vim/bundle/vim-json
git submodule add ${URL} ${NAME}

