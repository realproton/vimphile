#!/bin/bash

touch vimrcs/userConfig.vim
touch vimrcs/userConfigG.vim

cp -r -f plugin ~/.vim
cp -r -f doc ~/.vim

# cp -r -f vimrcs ~/.vim

# cat vimrc.vim > ~/.vimrc
# cat gvimrc.vim > ~/.gvimrc

./sync.sh

echo "Install Vimphile completed!"
