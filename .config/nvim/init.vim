let mapleader =";"

""""""""""""""""""""
"      Sources     "
""""""""""""""""""""
source ~/.config/nvim/pluginit.vim 	" enable plugins

""""""""""""""""""""
" General settings "
""""""""""""""""""""
" automatically source this file when edited
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echo "Reloaded $MYVIMRC" 

" Generic
colorscheme one
set background=dark 			" background set to dark
syntax on 				" enable syntax
set termguicolors                       " use true color
" set shellcmdflag=-ic                    " make shell interactive (allows aliases)
set clipboard+=unnamedplus 		" yank/delete copies to clipboard
set number relativenumber 		" show absolute line number on currentline, relative line numbers on other lines
set splitbelow splitright 		" open splits down and to the right
set encoding=utf-8 			" set file encoding
set title 				" label window with name of file
set mouse=a 				" allow mouse usage
set timeoutlen=500 			" time in ms to wait for mapped sequence to complete
set updatetime=500 			" time in ms to wait on cursorhold events
set nowrap 				" don't wrap long lines
set completeopt=menuone,noselect 	" autocompletion menu

" Tab settings
set softtabstop=2 			" number of spaces in tab when editing
set shiftwidth=2 			" number of spaces for autoindent
set expandtab                           " expand tabs to spaces

" Declutter
set noshowmode 				" don't show mode on status line
set noshowcmd 				" don't show last command on line
set noruler 				" don't show ruler on line
set laststatus=0 			" don't show last status
set nohlsearch 				" don't highlight search terms

" Persistent undo
if !has('nvim')
    if !isdirectory($HOME . '/.local/vim/undo')
        call mkdir($HOME . '/.local/vim/undo', 'p', 0700)
    endif
    set undodir=~/.local/vim/undo
endif
set undofile


""""""""""""""""""""
"     Mappings     "
""""""""""""""""""""


nnoremap <LEADER>w :w<CR>
nnoremap <LEADER>q :q!<CR>
nnoremap <LEADER>z ZZ

map ! :!

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

nnoremap <LEADER>* :%s/\<<C-r><C-w>\>//g<Left><Left>    " replace every instance of the word under the cursor
