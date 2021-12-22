try
    source ~/.vim/vimrcs/basic.vim
    source ~/.vim/vimrcs/keymap.vim
catch
    :echo "No user configurations!"
endtry

try
    source ~/.vim/vimrcs/graphic.vim
    source ~/.vim/vimrcs/userConfig.vim
    source ~/.vim/vimrcs/userConfigG.vim
endtry
