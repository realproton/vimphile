try
    source ~/.vim/vimrcs/basic.vim
    source ~/.vim/vimrcs/keymap.vim
catch
    :echo "No user configurations!"
endtry

try
    source ~/.vim/vimrcs/userConfig.vim
endtry
