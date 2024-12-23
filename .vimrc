source ~/.vim/lspconf.vim


set number relativenumber
set mouse=a
"| Makes tab width 4
set showtabline=4
set tabstop=4
set shiftwidth=4
set smartindent

colorscheme habamax

" Tell vim to not act like predecessor of VI
set nocompatible

set clipboard=unnamedplus
set nohidden
" set nospell

syntax enable

" Enables fuzzy finder like feature with find command
set path+=**
" Display ALL matching files when tab complete
set wildmenu

"set statusline+=%F
"set laststatus=2
set showcmd
set autoread
set autowrite
set hlsearch
set incsearch

command! MakeTags !ctags -R .
" Now:
" - ^] to jump to tag under cursor
" - g^] for ambiguous tags
" - ^t to jump back up the tag stack

" Autocomplete:
" -- ^x^n for JUST this file
" -- ^x^f autocomplete filenames
" -- ^x^\ for tags only
" -- ^n for anything
" Now We Can:
" -- Use ^n and ^p to go back and forth in list

" File Browsing NETRW:
let g:netrw_banner = 0 		" Disable the weird banner
let g:netrw_liststyle = 3 	" Tree view


let g:VM_leader = "\\\\"
let mapleader = " "
" Insert Mode Mappings:
inoremap ( ()<Left>
inoremap [ []<Left>
"inoremap { {}<Left><CR><BS><Esc>O
inoremap { {}<Left>
"inoremap < <><Left>
"inoremap <expr> > getline(".")[col(".")-1] == '>' ? '<Right>' : '>'
inoremap <expr> ) getline(".")[col(".")-1] == ')' ? '<Right>' : ')'
inoremap <expr> ] getline(".")[col(".")-1] == ']' ? '<Right>' : ']'
inoremap <expr> } getline(".")[col(".")-1] == "}" ? '<Right>' : "}"
inoremap <expr> " getline(".")[col(".")-1] == '"' ? '<Right>' : '""<Left>'
inoremap <expr> ' getline(".")[col(".")-1] == "'" ? '<Right>' : "''<Left>"

" Normal Mode Mappings:
"nnoremap ; :
nnoremap <leader><Tab> <Tab>
nnoremap <leader>x :b#<bar>bd#<CR> 
nnoremap <leader>X :bd<CR> 
nnoremap <leader>C :bw<CR> 
nnoremap <leader>e :e ./<CR>
nnoremap <leader>E :tabnew<CR>:e ./<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>b :buffer 
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
"nnoremap <Esc> :noh<CR>
nnoremap <C-s> :w<CR>


" Highlight Sage Files As Python:
au BufRead,BufNewFile *.sage set filetype=python
au BufRead,BufNewFile *.sagews set filetype=python


" Persistent Undo:
set undodir=~/.vim/undo
set undofile
set undolevels=100
set undoreload=0
set nohidden


" For Commentary Plugin:
filetype plugin indent on

autocmd! InsertEnter * call feedkeys("\<Cmd>noh\<cr>" , 'n')
" Load for latex files
autocmd FileType tex source ~/.vim/tex-settings.vim


