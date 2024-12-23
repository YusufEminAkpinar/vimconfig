let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 2
let g:vimtex_quickfix_open_on_warning = 0

" VimTeX uses latexmk for default, I won't change it.
" let g:vimtex_compiler_method = 'latexrun'

" This is the default one, don't need to override.
let maplocalleader = "\\"

" let g:tex_flavor='latex'
" Turns commands into actual symbols when cursor not on line, remove if
" experience problems with fonts or performance.
" BRO IT LOOKS LIKE SHIT....
set conceallevel=0
" let g:tex_conceal='abdmg'


" Insert Mode Mappings:
inoremap <C-f> \frac{}<Left>
inoremap <C-b> <ESC><S-v>"by"bpea<C-w>end<ESC>O
inoremap <C-d> \[<CR>\]<Up><CR>
inoremap _ _{}<Left>
inoremap ^ ^{}<Left>
inoremap <expr> $ getline(".")[col(".")-1] == '$' ? '<Right>' : '$$<Left>'
iunmap '
iunmap "

" Normal Mode Mappings:
" nnoremap <C-b> :y<CR>pea<C-w>end<ESC>O
