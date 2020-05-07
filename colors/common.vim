" Common settings for all colorschemes

" Color codes from https://www.rapidtables.com/web/color/RGB_Color.html

" Custom groups
" =============

hi customNormal       guifg=fg guibg=bg                     ctermfg=fg ctermbg=bg
hi customItalic       guifg=fg guibg=bg gui=italic          ctermfg=fg ctermbg=bg cterm=italic
hi customBold         guifg=fg guibg=bg gui=bold            ctermfg=fg ctermbg=bg cterm=bold
hi customInverted     guifg=bg guibg=fg                     ctermfg=bg ctermbg=fg
hi customErrorMsg     guifg=#FFFFFF guibg=#C02F1D           ctermfg=White ctermbg=Red
hi customWarningMsg   guifg=#000000 guibg=#E4E318 gui=NONE  ctermfg=Black ctermbg=Yellow cterm=NONE

hi customGreen        guifg=#26CC00 guibg=NONE gui=NONE     ctermfg=Green ctermbg=NONE cterm=NONE
hi customRed          guifg=#C02F1D guibg=NONE gui=NONE     ctermfg=Red ctermbg=NONE cterm=NONE


" Separated groups
" ================

hi! link Directory   customDirectory
hi! link Special     Normal
hi! link SpecialKey  customHighlight

hi! link Ignore      Folded
hi! link Conceal     Ignore
hi! link NonText     Visual
hi! link EndOfBuffer Normal


" Syntax groups
" =============

hi! link Comment    customDark

hi! link Constant   Normal
hi! link String     customItalic
hi! link Number     Normal

hi! link Statement  Normal
hi! link Type       Normal
hi! link PreProc    Normal
hi! link Identifier Normal

hi! link Todo       customTodo

hi! link Error      customRed


" Elements of interface
" =====================

" Cursor
let &t_SI = "\<Esc>]12;green\x7" | " solid non-blinking cursor
let &t_SR = &t_SI
let &t_EI = &t_SI
hi  Cursor            guibg=#26CC00 ctermbg=Green
hi! link TermCursor   Cursor
hi! link TermCursorNC Cursor
hi! link lCursor      Cursor

" Visual mode and Search
hi! link Visual    customInvertedDark
hi! link IncSearch Todo
hi! link Search    customSearch

" Indicators and references
hi! link CursorLine   customLine
hi! link CursorColumn CursorLine
hi! link CursorLineNr CursorLine
hi! link ColorColumn  CursorLine
hi! link LineNr       Comment
hi! link SignColumn   Normal
hi! link Folded       Directory
hi! link FoldColumn   Folded
hi  MatchParen        guibg=NONE gui=underline    ctermbg=NONE cterm=underline

" Menus
hi! link Pmenu      Visual
hi! link PmenuSel   Search
hi! link PmenuSbar  Search
hi! link PmenuThumb Normal
hi! link WildMenu   Normal

" Messages and user interaction
hi! link ModeMsg    customHighlight
hi! link Title      customTitle
hi! link MoreMsg    ModeMsg
hi! link Question   ModeMsg   | " Press ENTER or type command to continue
hi! link ErrorMsg   customErrorMsg
hi! link WarningMsg customWarningMsg

" Spellcheck
hi! link SpellBad   ErrorMsg
hi! link SpellCap   WarningMsg
hi! link SpellRare  WarningMsg
hi! link SpellLocal WarningMsg

" Bars, lines and dividers
hi! link StatusLine   Visual
hi! link StatusLineNC CursorLine
hi! link VertSplit    StatusLineNC

hi! link TabLine      StatusLineNC
hi! link TabLineFill  TabLine
hi! link TabLineSel   StatusLine


" Git diff groups
" ===============

hi! link diffSubname    diffLine
hi! link diffRemoved    customRed
hi! link diffAdded      customGreen
hi! link diffFile       customHighlight
hi! link diffNewFile    diffFile
hi! link diffIndexLine  diffFile

hi! link DiffAdd     customGreen
hi! link DiffDelete  customRed



" Git commit groups
" =================

hi! link gitcommitSummary Normal
hi! link gitcommitBlank   WarningMsg
hi! link gitcommitBranch  customBold
hi! link gitcommitHeader  Normal
hi! link gitcommitDiff    Normal

hi! link gitcommitSelected     Comment
hi! link gitcommitSelectedType customGreen
hi! link gitcommitSelectedFile gitcommitSelectedType

hi! link gitcommitDiscarded     Comment
hi! link gitcommitDiscardedType customRed
hi! link gitcommitDiscardedFile gitcommitDiscardedType

hi! link gitcommitUntracked     Comment
hi! link gitcommitUntrackedFile Normal


" Help groups
" ===========

hi! link HelpHeader     customHeader
hi  helpSpecial         guifg=#1395BA                ctermfg=DarkCyan

hi! link helpOption     helpSpecial
hi! link helpExample    customHighlight
hi! link helpCommand    customBold
hi! link helpNote       Todo
hi  helpSectionDelim    guifg=#A9A9A9                ctermfg=DarkGray

hi! link helpNotVi      helpSpecial
hi! link helpHeadline   HelpHeader
hi! link helpWarning    WarningMsg


" NERDTree
" ========

hi! link NERDTreeHelp           Normal
hi! link NERDTreeHelpTitle      helpHeader
hi! link NERDTreeHelpKey        helpSpecial
hi! link NERDTreeHelpCommand    helpExample
hi! link NERDTreeToggleOff      customRed
hi! link NERDTreeToggleOn       customGreen

hi! link NERDTreeUp             Directory
hi! link NERDTreeCWD            Normal
hi! link NERDTreeDir            Directory
hi! link NERDTreeDirSlash       Directory
hi! link NERDTreeFile           Normal
hi! link NERDTreeExecFile       customHighlight


" vim-fugitive
" ============

hi! link fugitiveHeader             Normal
hi! link fugitiveSymbolicRef        customDark

hi! link fugitiveCount              Normal
hi! link fugitiveUntrackedHeading   Normal
hi! link fugitiveUntrackedModifier  customDark
hi! link fugitiveUntrackedSection   customDark

hi! link fugitiveUnstagedHeading    Normal
hi! link fugitiveUnstagedModifier   customDark
hi! link fugitiveUnstagedSection    customDark

hi! link fugitiveStagedHeading      customGreen
hi! link fugitiveStagedModifier     fugitiveStagedHeading
hi! link fugitiveStagedSection      fugitiveStagedHeading

hi! link fugitiveHeading            Normal
hi! link fugitiveHash               customDark
hi! link fugitiveSection            customDark


" HTML
" ====

hi! link htmlH1     customHeader
hi! link htmlBold   customBold
hi! link htmlItalic customItalic


" vim: expandtab tabstop=4 shiftwidth=0 softtabstop=4