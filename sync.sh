#!/bin/bash

# cp -r -f plugin ~/.vim
# cp -r -f doc ~/.vim

cp -r -f vimrcs ~/.vim
cat vimrc.vim > ~/.vimrc
cat gvimrc.vim > ~/.gvimrc

echo "Sync Vimphile configurations successfully"
