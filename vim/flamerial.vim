" -----------------------------------------------------------------------------
" File: flamerial.vim
" Author: Sherman Rofeman <skippyr.developer@gmail.com>
" Source: https://github.com/skippyr/flamerial
" -----------------------------------------------------------------------------

" Settings

set termguicolors

" Palette Highlights

hi FlamerialRedForeground guifg=#a62126
hi FlamerialYellowForeground guifg=#a86419
hi FlamerialBlueForeground guifg=#8c6f46
hi FlamerialGreenForeground guifg=#755717
hi FlamerialMagentaForeground guifg=#754636
hi FlamerialCyanForeground guifg=#852d10
hi FlamerialWhiteForeground guifg=#f6c463
hi FlamerialLightBlackForeground guifg=#916634

hi FlamerialRedBackground guibg=#a62126 guifg=#f6c463
hi FlamerialYellowBackground guibg=#a86419 guifg=#f6c463
hi FlamerialBlueBackground guibg=#8c6f46 guifg=#f6c463
hi FlamerialMagentaBackground guibg=#754636 guifg=#f6c463
hi FlamerialCyanBackground guibg=#852d10 guifg=#f6c463
hi FlamerialWhiteBackground guibg=#f6c463 guifg=#0d0000
hi FlamerialLightBlackBackground guibg=#916634 guifg=#f6c463
hi FlamerialBlackVariant0Background guibg=#260b0b guifg=#f6c463
hi FlamerialBlackVariant1Background guibg=#661f1f guifg=#f6c463
hi FlamerialNormalInverted guibg=#f6c463 guifg=#0d0000

" Basic Highlights

hi Normal guibg=#0d0000 guifg=#f6c463
hi Underlined gui=underline guifg=#a62126
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

