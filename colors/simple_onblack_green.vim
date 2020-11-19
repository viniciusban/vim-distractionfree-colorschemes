" Vim colorscheme with harmonic basic colors
" Maintainer:	Vinicius Assef <viniciusban@gmail.com>
" Last Change:	2020 Abr 23
"
" Color codes from:
"   - https://www.rapidtables.com/web/color/RGB_Color.html
"   - https://www.color-hex.com/

set background=dark
hi clear

let g:colors_name = 'simple_onblack_green'
hi Normal             guifg=#00BB66 guibg=#181818           ctermfg=Green ctermbg=Black


" Custom groups
" =============

hi customDark         guifg=#008866 guibg=bg gui=NONE       ctermfg=DarkGreen ctermbg=bg cterm=NONE
hi customHighlight    guifg=#CECECE guibg=bg gui=NONE       ctermfg=White ctermbg=bg cterm=NONE
hi customBold         guifg=#4CCF93 guibg=bg gui=bold       ctermfg=LightGreen ctermbg=bg cterm=bold
hi customInvertedDark guifg=#000000 guibg=#008866           ctermfg=Black ctermbg=LightGreen
hi customInvertedLight guifg=#CECECE guibg=#008866          ctermfg=White ctermbg=LightGreen
hi customStatusLine   guifg=#CECECE guibg=#008866 gui=NONE  ctermfg=White ctermbg=LightGreen cterm=NONE


" Common
" ======

execute 'source '. expand('<sfile>:h') .'/simple_onblack_common.vim'


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4