" -----------------------------------------------------------------------------
" File: flamerial.vim
" Author: Sherman Rofeman <skippyr.developer@gmail.com>
" Source: https://github.com/skippyr/flamerial
" -----------------------------------------------------------------------------

" Settings

set termguicolors

" Palette

hi FlamerialRedForeground guifg=#911317
hi FlamerialYellowForeground guifg=#c24119
hi FlamerialBlueForeground guifg=#665f39
hi FlamerialGreenForeground guifg=#755717
hi FlamerialMagentaForeground guifg=#59303d
hi FlamerialCyanForeground guifg=#75280e
hi FlamerialWhiteForeground guifg=#f5a245
hi FlamerialLightBlackForeground guifg=#916634
hi FlamerialNormalForeground guifg=#f5a245

" Basic Links

hi Normal guibg=#080000 guifg=#f5a245
hi Underlined gui=underline guifg=#911317
hi! link SpecialKey FlamerialLightBlackForeground
hi! link LineNr FlamerialYellowForeground
hi! link Comment FlamerialBlueForeground
hi! link NonText FlamerialBlueForeground
hi! link Title FlamerialMagentaForeground
hi! link Special FlamerialMagentaForeground
hi! link PreProc FlamerialMagentaForeground
hi! link Identifier FlamerialCyanForeground
hi! link Type FlamerialCyanForeground
hi! link Number FlamerialRedForeground
hi! link Constant FlamerialMagentaForeground
hi! link String FlamerialGreenForeground
hi! link MatchParen FlamerialNormalForeground

" Language Specific Links

hi! link htmlTag FlamerialWhiteForeground
hi! link htmlEndTag FlamerialWhiteForeground
hi! link jsonBraces FlamerialNormalForeground

