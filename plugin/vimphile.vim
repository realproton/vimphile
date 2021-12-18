" Vimphile

" =====
" Quick Runner
" =====

" Map F3 to open terminal in horizontal split
nnoremap <F3> :bot terminal <CR>
" Use Normal Mode in terminal
tnoremap <Esc> <C-\><C-n>
" Map ;q to close terminal window
tnoremap ;q <C-\><C-n>:q!<CR>
" Map ;qa to close all
tnoremap ;qa <C-\><C-n>:qa!<CR>

" Map F5 to quick run file
nnoremap <F5> :call QuickRun() <CR>

" Map F6 to debug file
nnoremap <F6> :call QuickDebug() <CR>

function! QuickRun()
    :w
    if &filetype == 'c'
        :!gcc % -o "%:r.out"
        :!./"%:r.out"
    elseif &filetype == 'cpp'
        :!gcc % -o "%:r.out"
        :!./"%:r.out"
    elseif &filetype == 'python'
        :!python3 %
    elseif &filetype == 'java'
        " :!javac % && java %:r
        :!javac %:t && java %:t:r
    elseif &filetype == 'matlab'
        :!octave %
    else
        :echo "Unsupported file type!"
    endif
endfunction

function! QuickDebug()
    :w
    if has('mac')
        if &filetype == 'c'
            :!gcc % -o "%:r.out"
            :!lldb "%:r.out"
        elseif &filetype == 'cpp'
            :!gcc % -o "%:r.out"
            :!lldb "%:r.out"
        else
            :echo "Unsupported file type!"
        endif
    elseif has('linux')
        if &filetype == 'c'
            :!gcc % -o "%:r.out"
            :!gdb "%:r.out"
        elseif &filetype == 'cpp'
            :!gcc % -o "%:r.out"
            :!gdb "%:r.out"
        else
            :echo "Unsupported file type!"
        endif
    else
        :echo "Unsupported operating system!"
    endif
endfunction

" =====
" Layout Settings

" Set up Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1

function! Layout(type)
    if a:type == 0
        :vsplit
        :exe "vertical resize" . (winwidth(0) * 2 / 4)
        :Explore
    elseif a:type == 1
        :vsplit
        :exe "vertical resize" . (winwidth(0) * 2 / 4)
        :Explore
        :below term
    elseif a:orientation == 2
        :vsplit
        :exe "vertical resize" . (winwidth(0) * 2 / 4)
        :Explore
        :bot sp
        :exe "resize " . (winheight(0) * 2 / 5)
        :call term_start($SHELL, {'curwin' : 1})
    else
        :only!
    endif 
endfunction

" Map F10 to change to layout 0
nnoremap <F10> :call Layout(0) <CR>

