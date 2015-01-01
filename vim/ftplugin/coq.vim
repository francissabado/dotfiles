nnoremap <buffer> <Left> :GotoDot<CR>
nnoremap <buffer> <Right> :CoqToCursor<CR>
nnoremap <buffer> <Up> :CoqUndo<CR>
nnoremap <buffer> <Down> :CoqNext<CR>

inoremap <buffer> <Left> <C-o>:GotoDot<CR>
inoremap <buffer> <Right> <C-o>:CoqToCursor<CR>
inoremap <buffer> <Up> <C-o>:CoqUndo<CR>
inoremap <buffer> <Down> <C-o>:CoqNext<CR>
