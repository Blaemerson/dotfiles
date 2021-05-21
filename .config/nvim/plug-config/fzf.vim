" fzf
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }
map <c-f> :Files<CR>
inoremap <c-f> <ESC>:BLines<CR>
let $FZF_DEFAULT_COMMAND='find . -not -path "*/\.git*" -type f -print'
