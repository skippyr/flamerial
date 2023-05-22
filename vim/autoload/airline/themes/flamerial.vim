" -----------------------------------------------------------------------------
" File: flamerial.vim
" Author: Sherman Rofeman <skippyr.developer@gmail.com>
" Source: https://github.com/skippyr/flamerial
" -----------------------------------------------------------------------------

set termguicolors
let g:airline#themes#flamerial#palette = {}
let s:airline_a_normal = [ "#f6c463" , "#661f1f" , 0  , 0 ]
let s:airline_b_normal = [ "#f6c463" , "#754636" , 0  , 0 ]
let s:airline_c_normal = [ "#f6c463" , "#260b0b" , 0  , 0 ]
let g:airline#themes#flamerial#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let s:airline_a_visual = [ "#0d0000" , "#8c6f46" , 0  , 0 ]
let s:airline_b_visual = [ "#f6c463" , "#754636" , 0  , 0 ]
let s:airline_c_visual = [ "#f6c463" , "#260b0b" , 0  , 0 ]
let g:airline#themes#flamerial#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#flamerial#palette.commandline = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let s:airline_a_insert = [ "#0d0000" , "#a86419" , 0  , 0 ]
let s:airline_b_insert = [ "#f6c463" , "#754636" , 0  , 0 ]
let s:airline_c_insert = [ "#f6c463" , "#260b0b" , 0  , 0 ]
let g:airline#themes#flamerial#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#flamerial#palette.replace = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

