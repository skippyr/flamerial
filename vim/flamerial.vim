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

hi FlamerialRedBackground guibg=#911317 guifg=#f5a245
hi FlamerialYellowBackground guibg=#c24119 guifg=#f5a245
hi FlamerialBlueBackground guibg=#665f39 guifg=#f5a245
hi FlamerialMagentaBackground guibg=#59303d guifg=#f5a245
hi FlamerialCyanBackground guibg=#75280e guifg=#f5a245
hi FlamerialWhiteBackground guibg=#f5a245 guifg=#080000
hi FlamerialLightBlackBackground guibg=#916634 guifg=#f5a245
hi FlamerialBlackVariant0Background guibg=#260b0b guifg=#f5a245
hi FlamerialBlackVariant1Background guibg=#661f1f guifg=#f5a245
hi FlamerialNormalInverted guibg=#f5a245 guifg=#080000

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
hi! link MatchParen FlamerialWhiteForeground
hi! link Search FlamerialYellowBackground
hi! link ErrorMsg FlamerialRedBackground
hi! link Visual FlamerialNormalInverted
hi! link SpellBad FlamerialRedBackground
hi! link SpellRare FlamerialMagentaBackground
hi! link SpellCap FlamerialBlueBackground
hi! link SpellLocal FlamerialCyanBackground
hi! link DiffAdd FlamerialWhiteForeground
hi! link DiffChange FlamerialWhiteForeground
hi! link DiffDelete FlamerialWhiteForeground
hi! link DiffText FlamerialWhiteForeground
hi! link ColorColumn FlamerialLightBlackBackground
hi! link Function FlamerialMagentaForeground
hi! link Pmenu FlamerialBlackVariant0Background
hi! link PmenuSel FlamerialBlackVariant1Background
hi! link PmenuSbar FlamerialBlackVariant1Background
hi! link PmenuThumb FlamerialWhiteBackground

" Language Specific Links

hi! link htmlTag FlamerialWhiteForeground
hi! link htmlEndTag FlamerialWhiteForeground
hi! link jsonBraces FlamerialNormalForeground
hi! link javascriptBraces FlamerialNormalForeground

