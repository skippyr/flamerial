" -----------------------------------------------------------------------------
" File: flamerial.vim
" Author: Sherman Rofeman <skippyr.developer@gmail.com>
" Source: https://github.com/skippyr/flamerial
" -----------------------------------------------------------------------------

" Settings

set termguicolors

" Palette Highlights

hi FlamerialRedForeground guifg=#911317
hi FlamerialYellowForeground guifg=#a83816
hi FlamerialBlueForeground guifg=#665f39
hi FlamerialGreenForeground guifg=#755717
hi FlamerialMagentaForeground guifg=#59303d
hi FlamerialCyanForeground guifg=#75280e
hi FlamerialWhiteForeground guifg=#bf7f36
hi FlamerialLightBlackForeground guifg=#916634

hi FlamerialRedBackground guibg=#911317 guifg=#bf7f36
hi FlamerialYellowBackground guibg=#a83816 guifg=#bf7f36
hi FlamerialBlueBackground guibg=#665f39 guifg=#bf7f36
hi FlamerialMagentaBackground guibg=#59303d guifg=#bf7f36
hi FlamerialCyanBackground guibg=#75280e guifg=#bf7f36
hi FlamerialWhiteBackground guibg=#bf7f36 guifg=#080000
hi FlamerialLightBlackBackground guibg=#916634 guifg=#bf7f36
hi FlamerialBlackVariant0Background guibg=#260b0b guifg=#bf7f36
hi FlamerialBlackVariant1Background guibg=#661f1f guifg=#bf7f36
hi FlamerialNormalInverted guibg=#bf7f36 guifg=#080000

" Basic Highlights

hi Normal guibg=#080000 guifg=#bf7f36
hi Underlined gui=underline guifg=#911317
hi! link Folded FlamerialBlueForeground
hi! link SpecialKey FlamerialLightBlackForeground
hi! link LineNr FlamerialYellowForeground
hi! link Comment FlamerialBlueForeground
hi! link NonText FlamerialBlueForeground
hi! link Title FlamerialMagentaForeground
hi! link Special FlamerialMagentaForeground
hi! link PreProc FlamerialMagentaForeground
hi! link Identifier FlamerialCyanForeground
hi! link Type FlamerialCyanForeground
hi! link Number FlamerialGreenForeground
hi! link Constant FlamerialMagentaForeground
hi! link String FlamerialGreenForeground
hi! link MatchParen FlamerialWhiteForeground
hi! link Search FlamerialYellowBackground
hi! link ErrorMsg FlamerialRedBackground
hi! link Error ErrorMsg
hi! link WarningMsg ErrorMsg
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
hi! link Function FlamerialRedForeground
hi! link Statement FlamerialRedForeground
hi! link Pmenu FlamerialBlackVariant0Background
hi! link PmenuSel FlamerialBlackVariant1Background
hi! link PmenuSbar FlamerialBlackVariant1Background
hi! link PmenuThumb FlamerialWhiteBackground
hi! link Question FlamerialGreenForeground
hi! link MoreMsg FlamerialGreenForeground
hi! link CursorLine FlamerialBlackVariant1Background
hi! link CursorLineNr FlamerialBlackVariant1Background
hi! link CursorColumn FlamerialBlackVariant1Background
hi! link Delimiter FlamerialNormalForeground
hi! link Directory FlamerialRedForeground
hi! link Todo Comment
hi! link SpecialComment Comment
hi! link StorageClass FlamerialRedForeground
hi! link TabLine FlamerialWhiteBackground

" Language Specific Highlights

hi! link htmlTag FlamerialWhiteForeground
hi! link htmlEndTag FlamerialWhiteForeground
hi! link javascriptBraces FlamerialNormalForeground
hi! link typescriptBraces FlamerialNormalForeground
hi! link cssBraces FlamerialNormalForeground
hi! link rustFuncName FlamerialNormalForeground
hi! link rustDerive FlamerialNormalForeground
hi! link rustAttribute Function

