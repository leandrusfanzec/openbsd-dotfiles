let mapleader =" "

map ,, :keepp /<++><CR>ca<
imap ,, <esc>:keepp /<++><CR>ca<

set title
set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus

" Some basics:
nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number 
" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
vnoremap . :normal .<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=es<CR>
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Open my bibliography file in split
map <leader>b :vsp<space>$BIB<CR>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler "%:p"<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout "%:p"<CR>
