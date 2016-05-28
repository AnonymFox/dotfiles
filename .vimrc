" ------- Plugins -------
" Pathogen package manager
execute pathogen#infect()
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g_ctrlp_working_path_mode = 'ra'


" ------- Default vim -------
" Use default clipboard
set clipboard=unnamedplus
set nocompatible 
syntax on

" Indent configuration
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set nu
set autoindent

" Search
set ignorecase
set smartcase

" Always show status line
set laststatus=2

" ------- Key bindings -------
" New line without insert
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<ESC>j
inoremap <C-BS> <C-W>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <A-b> ?\sclass\s<Enter>
nnoremap <C-s> :w<Enter>
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprevious<CR>
noremap <C-w> :tabclose<CR>
noremap <C-t> :tabnew<CR>


" ------- Abbreviations -------
iab iff if () {<CR>}<ESC>?if<CR>jdt}?(<CR>
iab ifelse if () {<CR>} else {<CR>}<Esc>kk^jdt}jdt}?(<CR>


" ------- GVim options -------
" Good color alts: monokai (sublime default), one (atom default)
colo one 
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set spell
