" cyacid.vim -- Vim color scheme.
" Author:      IVIESTAS ()
" Webpage:     
" Description: Slightly modified cyanide theme from https://github.com/lefoy/cyanide-theme and his webpage: http://lefoy.net
" Last Change: 2025-01-03

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "cyacid"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi NonText ctermbg=0 ctermfg=7 cterm=NONE guibg=#0A0A0A guifg=#7a7a7a gui=NONE
    hi Comment ctermbg=0 ctermfg=7 cterm=NONE guibg=#0A0A0A guifg=#7a7a7a gui=NONE
    hi Constant ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi Error ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Identifier ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Ignore ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi PreProc ctermbg=0 ctermfg=11 cterm=NONE guibg=#0A0A0A guifg=#787878 gui=NONE
    hi Special ctermbg=0 ctermfg=14 cterm=NONE guibg=#0A0A0A guifg=#AAAAAA gui=NONE
    hi Statement ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi String ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Todo ctermbg=8 ctermfg=10 cterm=NONE guibg=#333333 guifg=#b6db51 gui=NONE
    hi Type ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Underlined ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi StatusLine ctermbg=12 ctermfg=15 cterm=NONE guibg=#1a1a1a guifg=#EFEFEF gui=NONE
    hi StatusLineNC ctermbg=12 ctermfg=15 cterm=NONE guibg=#1a1a1a guifg=#EFEFEF gui=NONE
    hi VertSplit ctermbg=0 ctermfg=13 cterm=NONE guibg=#0A0A0A guifg=#3a3a3a gui=NONE
    hi TabLine ctermbg=0 ctermfg=13 cterm=NONE guibg=#0A0A0A guifg=#3a3a3a gui=NONE
    hi TabLineFill ctermbg=0 ctermfg=13 cterm=NONE guibg=#0A0A0A guifg=#3a3a3a gui=NONE
    hi TabLineSel ctermbg=0 ctermfg=13 cterm=NONE guibg=#0A0A0A guifg=#3a3a3a gui=NONE
    hi Title ctermbg=7 ctermfg=8 cterm=NONE guibg=#7a7a7a guifg=#333333 gui=NONE
    hi CursorLine ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi LineNr ctermbg=0 ctermfg=7 cterm=NONE guibg=#0A0A0A guifg=#7a7a7a gui=NONE
    hi CursorLineNr ctermbg=0 ctermfg=8 cterm=NONE guibg=#0A0A0A guifg=#333333 gui=NONE
    hi helpLeadBlank ctermbg=0 ctermfg=7 cterm=NONE guibg=#0A0A0A guifg=#7a7a7a gui=NONE
    hi helpNormal ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi Visual ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi VisualNOS ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi Pmenu ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi PmenuSbar ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi PmenuSel ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi PmenuThumb ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi FoldColumn ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi Folded ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi WildMenu ctermbg=13 ctermfg=10 cterm=NONE guibg=#3a3a3a guifg=#b6db51 gui=NONE
    hi SpecialKey ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi DiffAdd ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi DiffChange ctermbg=0 ctermfg=8 cterm=NONE guibg=#0A0A0A guifg=#333333 gui=NONE
    hi DiffDelete ctermbg=0 ctermfg=8 cterm=NONE guibg=#0A0A0A guifg=#333333 gui=NONE
    hi DiffText ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi IncSearch ctermbg=10 ctermfg=0 cterm=NONE guibg=#b6db51 guifg=#0A0A0A gui=NONE
    hi Search ctermbg=10 ctermfg=15 cterm=NONE guibg=#b6db51 guifg=#EFEFEF gui=NONE
    hi Directory ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi MatchParen ctermbg=8 ctermfg=15 cterm=NONE guibg=#333333 guifg=#EFEFEF gui=NONE
    hi SpellBad ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE guisp=#b6db51
    hi SpellCap ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE guisp=#b6db51
    hi SpellLocal ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE guisp=#b6db51
    hi SpellRare ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE guisp=#b6db51
    hi ColorColumn ctermbg=13 ctermfg=15 cterm=NONE guibg=#3a3a3a guifg=#EFEFEF gui=NONE
    hi SignColumn ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi ErrorMsg ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi ModeMsg ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi MoreMsg ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Question ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Cursor ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi CursorColumn ctermbg=0 ctermfg=13 cterm=NONE guibg=#0A0A0A guifg=#3a3a3a gui=NONE
    hi QuickFixLine ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE
    hi Conceal ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi ToolbarLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi ToolbarButton ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi debugPC ctermbg=0 ctermfg=15 cterm=NONE guibg=#0A0A0A guifg=#EFEFEF gui=NONE
    hi debugBreakpoint ctermbg=0 ctermfg=10 cterm=NONE guibg=#0A0A0A guifg=#b6db51 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=black ctermfg=white cterm=NONE
    hi NonText ctermbg=black ctermfg=gray cterm=NONE
    hi Comment ctermbg=black ctermfg=gray cterm=NONE
    hi Constant ctermbg=black ctermfg=white cterm=NONE
    hi Error ctermbg=black ctermfg=green cterm=NONE
    hi Identifier ctermbg=black ctermfg=green cterm=NONE
    hi Ignore ctermbg=black ctermfg=white cterm=NONE
    hi PreProc ctermbg=black ctermfg=yellow cterm=NONE
    hi Special ctermbg=black ctermfg=cyan cterm=NONE
    hi Statement ctermbg=black ctermfg=green cterm=NONE
    hi String ctermbg=black ctermfg=green cterm=NONE
    hi Todo ctermbg=darkgray ctermfg=green cterm=NONE
    hi Type ctermbg=black ctermfg=green cterm=NONE
    hi Underlined ctermbg=black ctermfg=green cterm=NONE
    hi StatusLine ctermbg=blue ctermfg=white cterm=NONE
    hi StatusLineNC ctermbg=blue ctermfg=white cterm=NONE
    hi VertSplit ctermbg=black ctermfg=magenta cterm=NONE
    hi TabLine ctermbg=black ctermfg=magenta cterm=NONE
    hi TabLineFill ctermbg=black ctermfg=magenta cterm=NONE
    hi TabLineSel ctermbg=black ctermfg=magenta cterm=NONE
    hi Title ctermbg=gray ctermfg=darkgray cterm=NONE
    hi CursorLine ctermbg=magenta ctermfg=white cterm=NONE
    hi LineNr ctermbg=black ctermfg=gray cterm=NONE
    hi CursorLineNr ctermbg=black ctermfg=darkgray cterm=NONE
    hi helpLeadBlank ctermbg=black ctermfg=gray cterm=NONE
    hi helpNormal ctermbg=black ctermfg=white cterm=NONE
    hi Visual ctermbg=magenta ctermfg=white cterm=NONE
    hi VisualNOS ctermbg=magenta ctermfg=white cterm=NONE
    hi Pmenu ctermbg=magenta ctermfg=white cterm=NONE
    hi PmenuSbar ctermbg=magenta ctermfg=white cterm=NONE
    hi PmenuSel ctermbg=magenta ctermfg=white cterm=NONE
    hi PmenuThumb ctermbg=magenta ctermfg=white cterm=NONE
    hi FoldColumn ctermbg=magenta ctermfg=white cterm=NONE
    hi Folded ctermbg=magenta ctermfg=white cterm=NONE
    hi WildMenu ctermbg=magenta ctermfg=green cterm=NONE
    hi SpecialKey ctermbg=black ctermfg=green cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=white cterm=NONE
    hi DiffChange ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffText ctermbg=black ctermfg=green cterm=NONE
    hi IncSearch ctermbg=green ctermfg=black cterm=NONE
    hi Search ctermbg=green ctermfg=white cterm=NONE
    hi Directory ctermbg=black ctermfg=green cterm=NONE
    hi MatchParen ctermbg=darkgray ctermfg=white cterm=NONE
    hi SpellBad ctermbg=black ctermfg=green cterm=NONE
    hi SpellCap ctermbg=black ctermfg=green cterm=NONE
    hi SpellLocal ctermbg=black ctermfg=green cterm=NONE
    hi SpellRare ctermbg=black ctermfg=green cterm=NONE
    hi ColorColumn ctermbg=magenta ctermfg=white cterm=NONE
    hi SignColumn ctermbg=black ctermfg=white cterm=NONE
    hi ErrorMsg ctermbg=black ctermfg=green cterm=NONE
    hi ModeMsg ctermbg=black ctermfg=green cterm=NONE
    hi MoreMsg ctermbg=black ctermfg=green cterm=NONE
    hi Question ctermbg=black ctermfg=green cterm=NONE
    hi Cursor ctermbg=black ctermfg=white cterm=NONE
    hi CursorColumn ctermbg=black ctermfg=magenta cterm=NONE
    hi QuickFixLine ctermbg=black ctermfg=green cterm=NONE
    hi Conceal ctermbg=black ctermfg=white cterm=NONE
    hi ToolbarLine ctermbg=black ctermfg=white cterm=NONE
    hi ToolbarButton ctermbg=black ctermfg=white cterm=NONE
    hi debugPC ctermbg=black ctermfg=white cterm=NONE
    hi debugBreakpoint ctermbg=black ctermfg=green cterm=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal

if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = [ '#0A0A0A', '#b6db51', '#b6db51', '#b6db51', '#b6db51', '#b6db51', '#b6db51', '#7a7a7a', '#333333', '#b6db51', '#b6db51', '#787878', '#1a1a1a', '#3a3a3a', '#AAAAAA', '#EFEFEF' ]
endif

" Generated with RNB (https://github.com/romainl/vim-rnb)
