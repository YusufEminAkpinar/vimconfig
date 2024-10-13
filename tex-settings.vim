
let g:vimtex_view_method = 'zathura'

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
" inoremap <C-i> $$<Left>
inoremap <C-d> \[<CR>\]<CR><Up><Esc><O>
inoremap <expr> $ getline(".")[col(".")-1] == '$' ? '<Right>' : '$'

" Normal Mode Mappings:
			
