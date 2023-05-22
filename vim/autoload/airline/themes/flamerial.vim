" -----------------------------------------------------------------------------
" File: flamerial.vim
" Author: Sherman Rofeman <skippyr.developer@gmail.com>
" Source: https://github.com/skippyr/flamerial
" -----------------------------------------------------------------------------

set termguicolors

let g:airline#themes#flamerial#palette = {}
let s:airline_a_normal = [ "#f6c463" , "#661f1f" , 0  , 0 ]
let s:airline_b_normal = [ "#f6c463" , "#992e2e" , 0  , 0 ]
let s:airline_c_normal = [ "#f6c463" , "#260b0b" , 0  , 0 ]
let g:airline#themes#flamerial#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

